#include "fft_stages.h"

void fft_stages(DTYPE In_R[SIZE], DTYPE In_I[SIZE], int stage,
                DTYPE Out_R[SIZE], DTYPE Out_I[SIZE])
{
	// DFTpts = 2^stage, numBF = DFTpts/2, twiddle stride = SIZE/DFTpts
	const int half_shift = stage - 1;
	const int half       = 1 << half_shift;
	const int mask       = half - 1;
	const int tw_shift   = M - stage;

	for (int b = 0; b < SIZE / 2; b++) { // 512 butterflies per stage
#pragma HLS PIPELINE II=1
		// i and i_lower = i + 2^(stage-1) never coincide, and every butterfly
		// owns a distinct pair, so the two stores per iteration (and stores in
		// different iterations) can never hit the same address. HLS cannot prove
		// this from the variable indices and otherwise forces II=2.
#pragma HLS DEPENDENCE variable=Out_R class=array type=intra dependent=false
#pragma HLS DEPENDENCE variable=Out_R class=array type=inter dependent=false
#pragma HLS DEPENDENCE variable=Out_I class=array type=intra dependent=false
#pragma HLS DEPENDENCE variable=Out_I class=array type=inter dependent=false
		int j       = b & mask;               // position inside the sub-DFT
		int grp     = b >> half_shift;          // which sub-DFT
		int i       = (grp << stage) + j;       // upper leg
		int i_lower = i + half;                 // lower leg
		int k       = j << tw_shift;            // twiddle index

		DTYPE c = W_real[k];
		DTYPE s = W_imag[k];

		DTYPE ar = In_R[i];
		DTYPE ai = In_I[i];
		DTYPE br = In_R[i_lower];
		DTYPE bi = In_I[i_lower];

		DTYPE tr = br * c - bi * s;
		DTYPE ti = bi * c + br * s;

		Out_R[i_lower] = ar - tr;
		Out_I[i_lower] = ai - ti;
		Out_R[i]       = ar + tr;
		Out_I[i]       = ai + ti;
	}
}