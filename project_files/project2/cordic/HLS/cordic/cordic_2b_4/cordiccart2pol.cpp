#include "cordiccart2pol.h"
#include <math.h>

internal_lut_t Kvalues[NO_ITER] =
{
    1,	                    // 1
    0.500000000000000,	    // 2
    0.250000000000000,	    // 3
    0.125000000000000,	    // 4
    0.0625000000000000,	    // 5
    0.0312500000000000,	    // 6
    0.0156250000000000,	    // 7
    0.00781250000000000,	// 8
    0.00390625000000000,	// 9
    0.00195312500000000,	// 10
    0.000976562500000000,	// 11
    0.000488281250000000,	// 12
    0.000244140625000000,	// 13
    0.000122070312500000,	// 14
    6.10351562500000e-05,	// 15
    3.05175781250000e-05,   // 16

    // additional
    // 1.52587890625e-05,	    // 17
    // 7.62939453125e-06,	    // 18
    // 3.814697265625e-06,	    // 19
    // 1.9073486328125e-06,    // 20
};

internal_lut_t angles[NO_ITER] =
{
    0.785398163397448,      // 1
    0.463647609000806,      // 2
    0.244978663126864,      // 3
    0.124354994546761,      // 4
    0.0624188099959574,     // 5
    0.0312398334302683,     // 6
    0.0156237286204768,     // 7
    0.00781234106010111,    // 8
    0.00390623013196697,    // 9
    0.00195312251647882,    // 10
    0.000976562189559320,   // 11
    0.000488281211194898,   // 12
    0.000244140620149362,   // 13
    0.000122070311893670,   // 14
    6.10351561742088e-05,   // 15
    3.05175781155261e-05,   // 16

    // additional
    // 1.52587890613158e-05,	// 17
    // 7.62939453110197e-06,	// 18
    // 3.8146972656065e-06,	// 19
    // 1.90734863281019e-06,   // 20
};

const internal_var_t CORDIC_GAIN = 0.60725293500925;

void cordiccart2pol(data_t x, data_t y, data_t * r,  data_t * theta)
{
    // For bitstream gen
    #pragma HLS INTERFACE s_axilite port=x
    #pragma HLS INTERFACE s_axilite port=y
    #pragma HLS INTERFACE s_axilite port=r
    #pragma HLS INTERFACE s_axilite port=theta
    #pragma HLS INTERFACE s_axilite port=return

    // convert to fixed point
    internal_var_t fixed_x = (internal_var_t)x;
    internal_var_t fixed_y = (internal_var_t)y;

    // We want to rotate our vector defined by the Cartesian coordinates, x and y, such that it lands directly
    // on the positive side of the X-axis
    // From there, the amplitude, r, is simply the resulting cos amplitude and theta is the total angle that we rotated our vector to get there

    // First, rotate initial vector by 90 degrees such that it lands in Quadrant 1 or 4
    const internal_var_t PI_DIV_2_RAD = angles[0] *  2;
    // Quirk: need to typecast negative versions back to data_t since it will return a type that's one bit wider
    //        by default and causes a type mismatch.
    internal_var_t theta_temp = (fixed_y < 0) ? PI_DIV_2_RAD: internal_var_t(-PI_DIV_2_RAD);
    internal_var_t current_cos = (fixed_y < 0) ? internal_var_t(-fixed_y) : fixed_y;	// abs(y)
    internal_var_t current_sin = (fixed_y < 0) ? fixed_x : internal_var_t(-fixed_x);

    // After the vector is in the correct quadrant, we can start converging on the positive X-axis
    for (size_t i = 0; i < NO_ITER; i++)
    {
        // Determine polarity of rotation needed to converge
        // onto X-axis
        // int sigma = (current_sin < 0) ? 1 : -1;

        // Compute shifts for Cartesian coordinates
        // TODO: change data_t to fixed point so we can use LSR to divide by 2 instead of relying on Kvalues
        internal_var_t cos_shift = current_cos * (internal_lut_t)Kvalues[i];
        internal_var_t sin_shift = current_sin * (internal_lut_t)Kvalues[i];

        // Apply transform
        if ( current_sin < 0 )
        {
            // Positive rotation
            current_cos = current_cos - sin_shift;
            current_sin = current_sin + cos_shift;
            theta_temp = theta_temp + angles[i];
        }
        else
        {
            // Negative rotation
            current_cos = current_cos + sin_shift;
            current_sin = current_sin - cos_shift;
            theta_temp = theta_temp - angles[i];
        }
    }
    *r = (data_t)(current_cos * CORDIC_GAIN);
    *theta = (data_t)(-theta_temp);
}
