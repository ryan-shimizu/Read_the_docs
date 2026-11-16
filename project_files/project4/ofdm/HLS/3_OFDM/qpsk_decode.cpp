#include "fft.h"
#include <stdio.h>

// 10-bit bit reversal (SIZE = 1024)
static inline int rev10(int k) {
	int r = 0;
	for (int b = 0; b < 10; b++) {
		r = (r << 1) | ((k >> b) & 1);
	}
	return r;
}

void qpsk_decode(DTYPE R[SIZE], DTYPE I[SIZE], int D[SIZE]) {

	for (int k = 0; k < SIZE; k++) {
#pragma HLS PIPELINE II=1
		int r = rev10(k);
		int b0 = (R[r] < 0) ? 1 : 0;
		int b1 = (I[r] < 0) ? 1 : 0;
		D[k] = (b1 << 1) | b0;
	}
}
