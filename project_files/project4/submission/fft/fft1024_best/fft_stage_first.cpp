#include"fft_stage_first.h"
#include "bit_reverse.h"
/*
 * Function: fft_stage_first_op calculates the first stage of the FFT.
 * 
INPUT:
	In_R, In_I[]: Real and Imag parts of Complex signal

OUTPUT:
	OUT_R, OUT_I[]: Real and Imag parts of Complex signal
 */

//=======================BEGIN: FFT fft_stage_first_op =========================
// In_R/In_I are in NATURAL order: the bit-reversal permutation is folded into
// the reads, so the top level must NOT call bit_reverse() beforehand.
void fft_stage_first(DTYPE In_R[SIZE], DTYPE In_I[SIZE],
                     DTYPE Out_R[SIZE], DTYPE Out_I[SIZE])
{
	for (int b = 0; b < SIZE / 2; b++) {
#pragma HLS PIPELINE II=1
		int i = b << 1; // butterfly pair is output (2b, 2b+1)

		// rev(2b+1) == rev(2b) + SIZE/2, so the two reads hit opposite halves.
		unsigned int ra = reverse_bits(i);
		unsigned int rb = reverse_bits(i + 1);

		DTYPE ar = In_R[ra];
		DTYPE ai = In_I[ra];
		DTYPE br = In_R[rb];
		DTYPE bi = In_I[rb];

		Out_R[i]     = ar + br;
		Out_I[i]     = ai + bi;
		Out_R[i + 1] = ar - br;
		Out_I[i + 1] = ai - bi;
	}
}
//=======================END: FFT fft_stage_first_op =========================

