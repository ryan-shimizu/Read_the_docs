#ifndef BITREVERSE_H
#define BITREVERSE_H

#include "fft_common.h"

static inline unsigned int reverse_bits(unsigned int input)
{
#pragma HLS INLINE
	unsigned int rev = 0;
	for (int i = 0; i < M; i++) {
#pragma HLS UNROLL
		rev = (rev << 1) | (input & 1);
		input = input >> 1;
	}
	return rev;
}

void bit_reverse(DTYPE X_R[SIZE], DTYPE X_I[SIZE]);

#endif
