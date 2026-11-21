#include"fft_stage_last.h"

/*
 * Function: fft_stage_first_op calculates the LAST stage of FFT.
 * 
INPUT:
	In_R, In_I[]: Real and Imag parts of Complex signal

OUTPUT:
	OUT_R, OUT_I[]: Real and Imag parts of Complex signal

 */

//=======================BEGIN: FFT fft_stage_last =========================
void fft_stage_last(DTYPE In_R[SIZE], DTYPE In_I[SIZE],
                    DTYPE Out_R[SIZE], DTYPE Out_I[SIZE])
{
	const int half = SIZE / 2;

	for (int i = 0; i < half; i++) {
#pragma HLS PIPELINE II=1
		int i_lower = i + half;

		DTYPE c = W_real[i]; // twiddle index == butterfly index
		DTYPE s = W_imag[i];

		DTYPE ar = In_R[i];
		DTYPE ai = In_I[i];
		DTYPE br = In_R[i_lower];
		DTYPE bi = In_I[i_lower];

		DTYPE tr = br * c - bi * s;
		DTYPE ti = bi * c + br * s;

		Out_R[i]       = ar + tr;
		Out_I[i]       = ai + ti;
		Out_R[i_lower] = ar - tr;
		Out_I[i_lower] = ai - ti;
	}
}
//=======================END: FFT fft_stage_last =========================

