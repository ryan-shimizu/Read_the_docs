#include "ofdm_recvr.h"
#include "demod.h"

void ofdm_receiver( DTYPE *X_R, DTYPE *X_I, uint32_t *SYM, int nframes )
{
#pragma HLS INTERFACE mode=m_axi port=X_R depth=34816 offset=slave bundle=gmem0
#pragma HLS INTERFACE mode=m_axi port=X_I depth=34816 offset=slave bundle=gmem1
#pragma HLS INTERFACE mode=m_axi port=SYM depth=34816 offset=slave bundle=gmem2
#pragma HLS INTERFACE mode=s_axilite port=X_R     bundle=control
#pragma HLS INTERFACE mode=s_axilite port=X_I     bundle=control
#pragma HLS INTERFACE mode=s_axilite port=SYM     bundle=control
#pragma HLS INTERFACE mode=s_axilite port=nframes bundle=control
#pragma HLS INTERFACE mode=s_axilite port=return  bundle=control

	DTYPE In_R[SIZE], In_I[SIZE];          // on-chip copy of one input frame
	DTYPE Out_R[SIZE], Out_I[SIZE];        // FFT output (only used inside demod)
	int   D[SIZE];                         // decoded symbols of one frame

frames:
// adding trip count hint for synth report
	for (int f = 0; f < nframes; f++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=1 avg=1

		const int base = f * SIZE;

	read_in:
		for (int i = 0; i < SIZE; i++) {
#pragma HLS PIPELINE II=1
			In_R[i] = X_R[base + i];
			In_I[i] = X_I[base + i];
		}

		demod(In_R, In_I, D, Out_R, Out_I);

	write_out:
		for (int i = 0; i < SIZE; i++) {
#pragma HLS PIPELINE II=1
			SYM[base + i] = D[i];
		}
	}
}