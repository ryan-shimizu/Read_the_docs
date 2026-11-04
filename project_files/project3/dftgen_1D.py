#!/usr/bin/env python3
"""
Generate 1D DFT twiddle-factor tables as a C/C++ header.

    table index m = (k * n) mod N

    cos_coefficients_table[m] =  cos(2*pi*m/N)
    sin_coefficients_table[m] = -sin(2*pi*m/N)     <- minus sign is baked in

That matches the kernel e^(-j*2*pi*k*n/N) (same convention as np.fft.fft), so in
the HLS code use the sine as-is, with no extra negation:

    idx = (i * j) & (SIZE - 1);
    c = cos_coefficients_table[idx];
    s = sin_coefficients_table[idx];
    re += xr * c - xi * s;
    im += xr * s + xi * c;

With --reps R > 1 the tables are emitted replicated as cos_rep[R][N] / sin_rep[R][N]
(R identical rows) so that each BRAM copy can serve two unrolled lanes:
use R = U / 2 for U lanes and index with cos_rep[u >> 1][idx].

Usage:
    python3 dftgen.py <output_dir> <size> [--reps R]
"""
import os
import sys
from argparse import ArgumentParser
from math import cos, sin, pi

VALUES_PER_LINE = 8


def fmt(v):
    """Format a value as a C float literal that round-trips exactly."""
    if abs(v) < 1e-12:      # cos(pi/2) etc. come out as ~6e-17 in double: snap to exact 0
        v = 0.0
    v = v + 0.0             # turns -0.0 into 0.0
    s = f"{v:.9g}"          # 9 significant digits uniquely identifies a float32
    if not any(ch in s for ch in ".eEn"):   # "1" -> "1.0" so the f suffix is valid
        s += ".0"
    return s + "f"


def generate_dft_coefficients(size):
    """Return (cos_vals, sin_vals), each `size` long. sin is already negated."""
    cos_vals, sin_vals = [], []
    for m in range(size):
        angle = -2.0 * pi * m / size        # computed in double; the cast to float is the only rounding
        cos_vals.append(cos(angle))
        sin_vals.append(sin(angle))         # == -sin(2*pi*m/size)
    return cos_vals, sin_vals


def body(vals):
    """Comma-separated values, wrapped for readability."""
    items = [fmt(v) for v in vals]
    lines = []
    for i in range(0, len(items), VALUES_PER_LINE):
        lines.append(", ".join(items[i:i + VALUES_PER_LINE]))
    return ",\n        ".join(lines)


def table_1d(name, vals):
    return f"const float {name}[{len(vals)}] = {{\n        {body(vals)}\n}};\n"


def table_replicated(name, vals, reps):
    rows = ",\n".join(f"    {{\n        {body(vals)}\n    }}" for _ in range(reps))
    return f"const float {name}[{reps}][{len(vals)}] = {{\n{rows}\n}};\n"


def coefficients_to_c(cos_vals, sin_vals, reps=1):
    size = len(cos_vals)
    out = [
        f"#ifndef DFT_COEFFICIENTS_{size}_1D_H",
        f"#define DFT_COEFFICIENTS_{size}_1D_H",
        "",
    ]
    if reps == 1:
        out.append(table_1d("cos_coefficients_table", cos_vals))
        out.append(table_1d("sin_coefficients_table", sin_vals))
        out += [
            "#ifdef __cplusplus",
            f'static_assert(sizeof(cos_coefficients_table) / sizeof(float) == {size}, "cos table size");',
            f'static_assert(sizeof(sin_coefficients_table) / sizeof(float) == {size}, "sin table size");',
            "#endif",
        ]
    else:
        out.append(table_replicated("cos_rep", cos_vals, reps))
        out.append(table_replicated("sin_rep", sin_vals, reps))
        out += [
            "#ifdef __cplusplus",
            f'static_assert(sizeof(cos_rep) / sizeof(cos_rep[0]) == {reps}, "cos_rep copies");',
            f'static_assert(sizeof(sin_rep) / sizeof(sin_rep[0]) == {reps}, "sin_rep copies");',
            "#endif",
        ]
    out += ["", f"#endif // DFT_COEFFICIENTS_{size}_1D_H", ""]
    return "\n".join(out)


if __name__ == "__main__":
    parser = ArgumentParser(description="Generate 1D DFT sin/cos precompute tables.")
    parser.add_argument("directory", type=str, help="directory to write the header into")
    parser.add_argument("size", type=int, help="DFT size N (number of table entries)")
    parser.add_argument("--reps", type=int, default=1,
                        help="number of identical table copies (use U/2 for U unrolled lanes); "
                             "1 = plain 1D tables (default)")
    args = parser.parse_args()

    if args.size < 1 or args.reps < 1:
        sys.exit("size and reps must be >= 1")
    if args.size & (args.size - 1):
        print(f"warning: size {args.size} is not a power of two; "
              "'& (SIZE - 1)' indexing will not work, use '% SIZE'", file=sys.stderr)

    cos_vals, sin_vals = generate_dft_coefficients(args.size)
    header = coefficients_to_c(cos_vals, sin_vals, args.reps)

    suffix = "" if args.reps == 1 else f"_rep{args.reps}"
    filename = f"coefficients{args.size}_1D{suffix}.h"
    filepath = os.path.join(args.directory, filename)
    os.makedirs(args.directory, exist_ok=True)
    with open(filepath, "w") as f:
        f.write(header)

    print(f"wrote {filepath}  (N={args.size}, copies={args.reps}, "
          f"{args.size * args.reps * 2} floats total)")