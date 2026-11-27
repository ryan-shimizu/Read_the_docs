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
	// Layer 1: one ROM per neuron (dim 1), so all 128 neurons read their
	// weight word j in the same cycle
	#pragma HLS ARRAY_PARTITION variable=golden_w1 complete dim=1
	#pragma HLS BIND_STORAGE variable=golden_w1 type=rom_1p impl=lutram
	// Layers 2 and 3: one ROM per word (dim 2), so a whole neuron row is read per cycle
	#pragma HLS ARRAY_PARTITION variable=golden_w2 complete dim=2
	#pragma HLS ARRAY_PARTITION variable=golden_w3 complete dim=2

	unsigned short acc[128];   // layer 1 match counts, one per neuron
	unsigned short l1[8];      // 128 activation bits
	unsigned short l2[4];      // 64 activation bits
	#pragma HLS ARRAY_PARTITION variable=acc complete
	#pragma HLS ARRAY_PARTITION variable=l1 complete
	#pragma HLS ARRAY_PARTITION variable=l2 complete

	// Zero initializing buffers
	for (int i = 0; i < 128; i++) {
		#pragma HLS UNROLL
		acc[i] = 0;
	}
	for (int k = 0; k < 8; k++) {
		#pragma HLS UNROLL
		l1[k] = 0;
	}
	for (int k = 0; k < 4; k++) {
		#pragma HLS UNROLL
		l2[k] = 0;
	}

	// Each cycle consumes one input word and updates all 128 neurons
	L1: for (int j = 0; j < 49; j++) {
		#pragma HLS PIPELINE II=1
		unsigned a = (unsigned short)IN[j];
		L1_pe: for (int i = 0; i < 128; i++) {
			#pragma HLS UNROLL
			acc[i] += popcount16(~(a ^ (unsigned short)golden_w1[i][j]));
		}
	}

	L1_act: for (int i = 0; i < 128; i++) {
		#pragma HLS UNROLL
		// act = 2*acc - 784 > 0  <=>  acc > 392 ; +1 -> bit 0, -1 (including act == 0) -> bit 1
		unsigned bit = (acc[i] > 392) ? 0u : 1u;
		l1[i >> 4] |= bit << (15 - (i & 15));
	}

	L2: for (int i = 0; i < 64; i++) {
		#pragma HLS PIPELINE II=1
		int m = 0;
		L2_dot: for (int j = 0; j < 8; j++) {
			#pragma HLS UNROLL
			m += popcount16(~((unsigned)l1[j] ^ (unsigned short)golden_w2[i][j]));
		}
		int act = 2 * m - 128;
		unsigned bit = (act > 0) ? 0u : 1u;
		l2[i >> 4] |= bit << (15 - (i & 15));
	}

	L3: for (int i = 0; i < 10; i++) {
		#pragma HLS PIPELINE II=1
		int m = 0;
		L3_dot: for (int j = 0; j < 4; j++) {
			#pragma HLS UNROLL
			m += popcount16(~((unsigned)l2[j] ^ (unsigned short)golden_w3[i][j]));
		}
		ys[i] = 2 * m - 64;
	}
}