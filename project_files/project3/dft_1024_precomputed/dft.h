#ifndef DFT_H
#define DFT_H

#include <stdint.h>
#include <ap_int.h>
#include <ap_axi_sdata.h>
#include <hls_stream.h>

typedef float DTYPE;
typedef float TEMP_TYPE;
#define SIZE 1024 		/* SIZE OF DFT */

// One stream beat = one complex sample, 64 bits wide:
//   data[31:0]  = real part (raw float bits)
//   data[63:32] = imag part (raw float bits)
typedef ap_axiu<64, 0, 0, 0> axis_t;

void dft(hls::stream<axis_t> &in_stream, hls::stream<axis_t> &out_stream);

union fp_bits { float f; uint32_t u; };

inline axis_t pack_sample(DTYPE re, DTYPE im, bool last)
{
    fp_bits r, i;
    r.f = re;
    i.f = im;
    axis_t pkt;
    pkt.data = (ap_uint<64>(i.u) << 32) | ap_uint<64>(r.u);
    pkt.keep = 0xFF;    // all 8 bytes valid
    pkt.strb = 0xFF;
    pkt.last = last;
    return pkt;
}

inline void unpack_sample(const axis_t &pkt, DTYPE &re, DTYPE &im)
{
    ap_uint<32> rb = pkt.data.range(31, 0);
    ap_uint<32> ib = pkt.data.range(63, 32);
    fp_bits r, i;
    r.u = rb.to_uint();
    i.u = ib.to_uint();
    re = r.f;
    im = i.f;
}
// Use streaming interface for demo
#endif // DFT_H
