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

void fir (
  data_t *y,
  data_t x
  )
{

	coef_t c[N] = {10, 11, 11, 8, 3, -3, -8, -11, -11, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -11, -11, -8, -3, 3, 8, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 8, 3, -3, -8, -11, -11, -10, -10, -10, -10, -10, -10, -10, -10, -11, -11, -8, -3, 3, 8, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 8, 3, -3, -8, -11, -11, -10, -10, -10, -10, -10, -10, -10, -10, -11, -11, -8, -3, 3, 8, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10};
	
	// Baseline Q1
	// fir_unoptimized(c, y, x);
	// fir_pipeline_off(c, y, x);
	fir_pipeline_manual(c, y, x);
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
	#pragma HLS pipeline II=6
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