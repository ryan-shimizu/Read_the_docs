/*
This is traditional 2-radix DIT FFT algorithm implementation.
INPUT:
	In_R, In_I[]: Real and Imag parts of Complex signal

OUTPUT:
	Out_R, Out_I[]: Real and Imag parts of Complex signal
*/

#include "fft.h"
#include "fft_common.h"
#include "fft_stages.h"
#include "fft_stage_first.h"
#include "fft_stage_last.h"
#include "bit_reverse.h"

void fft(DTYPE X_R[SIZE], DTYPE X_I[SIZE], DTYPE OUT_R[SIZE], DTYPE OUT_I[SIZE])
{
#pragma HLS INTERFACE mode=m_axi port=X_R   depth=1024 offset=slave bundle=gmem0
#pragma HLS INTERFACE mode=m_axi port=X_I   depth=1024 offset=slave bundle=gmem1
#pragma HLS INTERFACE mode=m_axi port=OUT_R depth=1024 offset=slave bundle=gmem2
#pragma HLS INTERFACE mode=m_axi port=OUT_I depth=1024 offset=slave bundle=gmem3
#pragma HLS INTERFACE mode=s_axilite port=X_R   bundle=control
#pragma HLS INTERFACE mode=s_axilite port=X_I   bundle=control
#pragma HLS INTERFACE mode=s_axilite port=OUT_R bundle=control
#pragma HLS INTERFACE mode=s_axilite port=OUT_I bundle=control
#pragma HLS INTERFACE mode=s_axilite port=return bundle=control

	DTYPE In_R[SIZE], In_I[SIZE];     // on-chip copy of the input
	DTYPE Res_R[SIZE], Res_I[SIZE];   // on-chip result buffer

	// Burst the input into on-chip RAM first. The copy loop is sequential at II=1,
	// so HLS infers AXI bursts. This is needed because stage 1 reads at
	// bit-reversed (random) addresses, which would be slow directly over AXI.
	// Bit reversal is folded into stage 1's reads. A separate in-place pass would
	// run at II=2 (each swap needs 4 accesses per array, a RAM has 2 ports).
	// Stage 1 reads In_X and writes Stage1_X (different arrays, 2 accesses each),
	// so it stays at II=1. This saves ~2k cycles vs. a separate bit_reverse pass.
	read_in:
	for (int i = 0; i < SIZE; i++) {
#pragma HLS PIPELINE II=1
		In_R[i] = X_R[i];
		In_I[i] = X_I[i];
	}

	// No longer used, bit reversal folded into stage 1
	// bit_reverse(X_R, X_I);

	//Call fft
	DTYPE Stage1_R[SIZE], Stage1_I[SIZE];
	DTYPE Stage2_R[SIZE], Stage2_I[SIZE];
	DTYPE Stage3_R[SIZE], Stage3_I[SIZE];
	DTYPE Stage4_R[SIZE], Stage4_I[SIZE];
	DTYPE Stage5_R[SIZE], Stage5_I[SIZE];
	DTYPE Stage6_R[SIZE], Stage6_I[SIZE];
	DTYPE Stage7_R[SIZE], Stage7_I[SIZE];
	DTYPE Stage8_R[SIZE], Stage8_I[SIZE];
	DTYPE Stage9_R[SIZE], Stage9_I[SIZE];

	fft_stage_first(In_R, In_I, Stage1_R, Stage1_I);
	fft_stages(Stage1_R, Stage1_I, 2, Stage2_R, Stage2_I);
	fft_stages(Stage2_R, Stage2_I, 3, Stage3_R, Stage3_I);
	fft_stages(Stage3_R, Stage3_I, 4, Stage4_R, Stage4_I);
	fft_stages(Stage4_R, Stage4_I, 5, Stage5_R, Stage5_I);
	fft_stages(Stage5_R, Stage5_I, 6, Stage6_R, Stage6_I);
	fft_stages(Stage6_R, Stage6_I, 7, Stage7_R, Stage7_I);
	fft_stages(Stage7_R, Stage7_I, 8, Stage8_R, Stage8_I);
	fft_stages(Stage8_R, Stage8_I, 9, Stage9_R, Stage9_I);
	fft_stage_last(Stage9_R, Stage9_I, Res_R, Res_I);

	write_out:
	for (int i = 0; i < SIZE; i++) {
#pragma HLS PIPELINE II=1
		OUT_R[i] = Res_R[i];
		OUT_I[i] = Res_I[i];
	}
}