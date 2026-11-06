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
    
    // Calculate each frequency domain sample iteratively
    for (i = 0; i < SIZE; i += 1) {
        temp_real[i] = 0;
        temp_imag[i] = 0;

        // (2 ∗ pi ∗ i)/N
        // w = (2.0 * 3.141592653589 / SIZE) * (TEMP_TYPE)i;

        // Calculate the jth frequency sample sequentially
        for (j = 0; j < SIZE; j += 1) {
			// thanks @sean b and @shantonu! :)
			// 1024x1024 sizes lead to overflow with single precision data types when calculating j * w naively
			// can solve this by calculating j * w upfront, taking the modulo with SIZE and letting it wrap around 2 * pi!
			// w = (2.0 * 3.141592653589 / SIZE) * (TEMP_TYPE)((i * j) & (SIZE - 1));
            // Use precomputed coefficients instead of HLS math funcs
            // TODO: Experiment with 1D table of N entries instead, need to modify dftgen.py (Question 6)
            c = cos_coefficients_table[(i * j) & (SIZE - 1)];
            s = sin_coefficients_table[(i * j) & (SIZE - 1)];

            // Multiply the current phasor with the appropriate input sample and keep
            // running sum
            temp_real[i] += (real_sample[j] * c - imag_sample[j] * s);
            temp_imag[i] += (real_sample[j] * s + imag_sample[j] * c);
        }

        // Assign to output array
        real_op[i] = temp_real[i];
        imag_op[i] = temp_imag[i];
    }

    // // Perform an inplace DFT, i.e., copy result into the input arrays
    // for (i = 0; i < SIZE; i += 1) {
    //     real_sample[i] = temp_real[i];
    //     imag_sample[i] = temp_imag[i];
    // }
}
