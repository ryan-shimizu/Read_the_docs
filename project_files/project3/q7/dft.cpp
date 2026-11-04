#include<math.h>
#include "dft.h"
#include"coefficients1024.h"

void dft(DTYPE real_sample[SIZE], DTYPE imag_sample[SIZE],DTYPE real_op[SIZE],DTYPE imag_op[SIZE])	//Use pointers while doing the demo for streaming//
{
    int i, j;
    TEMP_TYPE w;
    TEMP_TYPE c, s;

    // Temporary arrays to hold the intermediate frequency domain results
    TEMP_TYPE temp_real[SIZE];
    TEMP_TYPE temp_imag[SIZE];

    // Zero-initialize accumulators
    for (i = 0; i < SIZE; i++) {
        temp_real[i] = 0;
        temp_imag[i] = 0;
    }
    // Calculate each frequency domain sample iteratively
    // interchanging the two loops
    for (j = 0; j < SIZE; j++) {
        DTYPE xr = real_sample[j];   // loop-invariant in the inner loop
        DTYPE xi = imag_sample[j];

        for (i = 0; i < SIZE; i++) {
            #pragma HLS PIPELINE II=1
            int idx = (i * j) & (SIZE - 1);
            c = cos_coefficients_table[idx];
            s = sin_coefficients_table[idx];

            temp_real[i] += xr * c - xi * s;
            temp_imag[i] += xr * s + xi * c;
        }
    }

    // Assign to output arrays
    for (i = 0; i < SIZE; i++) {
        real_op[i] = temp_real[i];
        imag_op[i] = temp_imag[i];
    }
}