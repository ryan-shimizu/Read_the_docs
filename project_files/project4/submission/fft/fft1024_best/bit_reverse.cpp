/*
The bit_reverse part of FFT.
INPUT:
	In[]:

OUTPUT:
	Out[]:
 */

#include "bit_reverse.h"
#include <stdio.h>

// Function no longer needed since we can fold the bit reversals
// into the stage 1 loop. Kept here for testing purposes.
void bit_reverse(DTYPE X_R[SIZE], DTYPE X_I[SIZE])
{
// 	for (unsigned int i = 0; i < SIZE; i++) {
// #pragma HLS PIPELINE II=2
// 		// The {i, rev(i)} pairs touched by different iterations are disjoint,
// 		// so tell HLS there are no loop-carried memory dependences.
// #pragma HLS DEPENDENCE variable=X_R inter false
// #pragma HLS DEPENDENCE variable=X_I inter false
// 		unsigned int r = reverse_bits(i);
// 		if (i < r) { // strict <: self-mapped indices need no swap
// 			DTYPE tr = X_R[i];
// 			DTYPE ti = X_I[i];
// 			DTYPE rr = X_R[r];
// 			DTYPE ri = X_I[r];
// 			X_R[i] = rr;
// 			X_I[i] = ri;
// 			X_R[r] = tr;
// 			X_I[r] = ti;
// 		}
// 	}
}


