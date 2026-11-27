#include "bnn.h"
#include "golden.h"   // weights: golden_w1/w2/w3

static inline unsigned popcount16(unsigned x)
{
	x &= 0xFFFFu;
	x = x - ((x >> 1) & 0x5555u);
	x = (x & 0x3333u) + ((x >> 2) & 0x3333u);
	x = (x + (x >> 4)) & 0x0F0Fu;
	return (x + (x >> 8)) & 0x1Fu;
}

void bnn(DTYPE IN[SIZE], ITYPE ys[10])
{
	unsigned short l1[8];   // 128 bits
	unsigned short l2[4];   // 64 bits
	#pragma HLS ARRAY_PARTITION variable=l1 complete
	#pragma HLS ARRAY_PARTITION variable=l2 complete

	for (int k = 0; k < 8; k++) {
		l1[k] = 0;
	}
	for (int k = 0; k < 4; k++) {
		l2[k] = 0;
	}

	L1: for (int i = 0; i < 128; i++) {
		int m = 0;
		L1_dot: for (int j = 0; j < 49; j++) {
			#pragma HLS PIPELINE II=1
			unsigned a = (unsigned short)IN[j];
			unsigned w = (unsigned short)golden_w1[i * 49 + j];
			m += popcount16(~(a ^ w));
		}
		int act = 2 * m - 784;
		unsigned bit = (act > 0) ? 0u : 1u;               // +1 -> 0, -1 -> 1
		l1[i >> 4] |= bit << (15 - (i & 15));
	}

	L2: for (int i = 0; i < 64; i++) {
		int m = 0;
		L2_dot: for (int j = 0; j < 8; j++) {
			#pragma HLS UNROLL
			m += popcount16(~((unsigned)l1[j] ^ (unsigned short)golden_w2[i * 8 + j]));
		}
		int act = 2 * m - 128;
		unsigned bit = (act > 0) ? 0u : 1u;
		l2[i >> 4] |= bit << (15 - (i & 15));
	}

	L3: for (int i = 0; i < 10; i++) {
		int m = 0;
		L3_dot: for (int j = 0; j < 4; j++) {
			#pragma HLS UNROLL
			m += popcount16(~((unsigned)l2[j] ^ (unsigned short)golden_w3[i * 4 + j]));
		}
		ys[i] = 2 * m - 64;
	}
}