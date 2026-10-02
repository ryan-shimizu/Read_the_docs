/*
	Filename: fir.cpp
		FIR lab wirtten for WES/CSE237C class at UCSD.
		Match filter
	INPUT:
		x: signal (chirp)

	OUTPUT:
		y: filtered output

*/

#include "fir.h"

// Helper funcs
void fir_unoptimized(coef_t *c, data_t *y, data_t x);
void fir_pipeline_off(coef_t *c, data_t *y, data_t x);
void fir_pipeline_manual(coef_t *c, data_t *y, data_t x);
void fir_no_cond(coef_t *c, data_t *y, data_t x);
void fir_loop_fission(coef_t *c, data_t *y, data_t x);
void fir_loop_unroll(coef_t *c, data_t *y, data_t x);
void fir_array_partition_complete(coef_t *c, data_t *y, data_t x);

void fir (
  data_t *y,
  data_t x
  )
{

	coef_t c[N] = {10, 11, 11, 8, 3, -3, -8, -11, -11, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -11, -11, -8, -3, 3, 8, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 8, 3, -3, -8, -11, -11, -10, -10, -10, -10, -10, -10, -10, -10, -11, -11, -8, -3, 3, 8, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 8, 3, -3, -8, -11, -11, -10, -10, -10, -10, -10, -10, -10, -10, -11, -11, -8, -3, 3, 8, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10};
	
	// Baseline Q1
	// fir_unoptimized(c, y, x);
	// fir_pipeline_off(c, y, x);
	// fir_pipeline_manual(c, y, x);
	// fir_no_cond(c, y, x);
	// fir_loop_fission(c, y, x);
	// fir_loop_unroll(c, y, x);
	fir_array_partition_complete(c, y, x);
}

void fir_unoptimized(coef_t *c, data_t *y, data_t x)
{
	static
		data_t shift_reg[N];
		acc_t acc;
		int i;

	acc = 0;
	Shift_Accum_Loop:
	for (i = N - 1; i >= 0; i--){
		if (i == 0) {
			acc += x * c[0];
			shift_reg[0] = x;
		} else {
			shift_reg[i] = shift_reg[i - 1];
			acc += shift_reg[i] * c[i];
		}
	}
	*y = acc;
}

void fir_pipeline_off(coef_t *c, data_t *y, data_t x)
{
	#pragma HLS pipeline off
	static
		data_t shift_reg[N];
		acc_t acc;
		int i;

	acc = 0;
	Shift_Accum_Loop:
	for (i = N - 1; i >= 0; i--){
		if (i == 0) {
			acc += x * c[0];
			shift_reg[0] = x;
		} else {
			shift_reg[i] = shift_reg[i - 1];
			acc += shift_reg[i] * c[i];
		}
	}
	*y = acc;
}

void fir_pipeline_manual(coef_t *c, data_t *y, data_t x)
{
	#pragma HLS pipeline II=8
	static
		data_t shift_reg[N];
		acc_t acc;
		int i;

	acc = 0;
	Shift_Accum_Loop:
	for (i = N - 1; i >= 0; i--){
		if (i == 0) {
			acc += x * c[0];
			shift_reg[0] = x;
		} else {
			shift_reg[i] = shift_reg[i - 1];
			acc += shift_reg[i] * c[i];
		}
	}
	*y = acc;
}

void fir_no_cond(coef_t *c, data_t *y, data_t x)
{
#pragma HLS pipeline off
	static
		data_t shift_reg[N];
		acc_t acc;
		int i;

	acc = 0;
	Shift_Accum_Loop:
	for (i = N - 1; i > 0; i--){
		shift_reg[i] = shift_reg[i - 1];
		acc += shift_reg[i] * c[i];
	}
	acc += x * c[0];
	shift_reg[0] = x;
	*y = acc;
}

void fir_loop_fission(coef_t *c, data_t *y, data_t x)
{
	static
		data_t shift_reg[N];
		acc_t acc;
		int i;

	TDL:
	for (i = N - 1; i > 0; i--) {
		shift_reg[i] = shift_reg[i - 1];
	}
	shift_reg[0] = x;
	acc = 0;
	MAC:
	for (i = N - 1; i >= 0; i--) {
		acc += shift_reg[i] * c[i];
	}
	*y = acc;
}

void fir_loop_unroll(coef_t *c, data_t *y, data_t x)
{
	static
		data_t shift_reg[N];
		acc_t acc;
		int i;

	TDL:
	for (i = N - 1; i > 1; i = i - 2) {
		shift_reg[i] = shift_reg[i - 1];
		shift_reg[i - 1] = shift_reg[i - 2];
	}
	if (i == 1) {
		shift_reg[1] = shift_reg[0];
	}
	shift_reg[0] = x;
	acc = 0;
	MAC:
	for (i = N - 1; i >= 0; i--) {
		acc += shift_reg[i] * c[i];
	}
	*y = acc;
}

void fir_array_partition_complete(coef_t *c, data_t *y, data_t x)
{
	static
		data_t shift_reg[N];
		acc_t acc;
		int i;
	#pragma HLS array_partition variable=shift_reg complete
	acc = 0;
	Shift_Accum_Loop:
	for (i = N - 1; i > 0; i--){
		shift_reg[i] = shift_reg[i - 1];
		acc += shift_reg[i] * c[i];
	}
	acc += x * c[0];
	shift_reg[0] = x;
	*y = acc;
}