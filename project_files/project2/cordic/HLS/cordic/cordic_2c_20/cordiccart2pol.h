#ifndef CORDICCART2POL_H
#define CORDICCART2POL_H

#include <ap_fixed.h>

#define NO_ITER 16
#define W_VAR 16
#define I_VAR 3
#define W_LUT 20
#define I_LUT 3

typedef int   coef_t;
// Question 2a: assuming 16 iterations, the following variables will extend the max bit-width:
//              current_cos/current_sin: after 16 iterations, peaks at ~2.33 [-4,4]
//              theta_temp: after 16 iterations, peaks at pi, also within [-4,4]
//
//              so for [-4,4] = range of 8 = 2^3. 3 integer bits are needed
//              to calculate precision bits, we need to consider the two error sources:
//                - our cordic algorithm halves on every iteration and loses precision as we keep dividing (2^-15)
//                - every time we shift and add, we introduce quantization errors that stack with the number of iterations (2^3 x 2^-F)
//              we can calculate F by solving for the inequality (quantization error < algorithm error) and get F=19
//              therefore, for all 16 iterations to be productive, we need a minimum of W = 19 + 3 = 22 bits
//  
//              min:
//              typedef ap_fixed<22, 3, AP_RND, AP_WRAP> internal_var_t
typedef float data_t;
typedef ap_fixed<W_VAR, I_VAR, AP_RND, AP_WRAP> internal_var_t;
typedef ap_fixed<W_LUT, I_LUT, AP_RND, AP_WRAP> internal_lut_t;

typedef float acc_t;

void cordiccart2pol(data_t x, data_t y, data_t * r,  data_t * theta);

#endif
