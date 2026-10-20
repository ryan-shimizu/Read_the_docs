#include "cordiccart2pol.h"
#include <math.h>

data_t Kvalues[NO_ITER] = {1,	0.500000000000000,	0.250000000000000,	0.125000000000000,	0.0625000000000000,	0.0312500000000000,	0.0156250000000000,	0.00781250000000000,	0.00390625000000000,	0.00195312500000000,	0.000976562500000000,	0.000488281250000000,	0.000244140625000000,	0.000122070312500000,	6.10351562500000e-05,	3.05175781250000e-05};

data_t angles[NO_ITER] = {0.785398163397448,	0.463647609000806,	0.244978663126864,	0.124354994546761,	0.0624188099959574,	0.0312398334302683,	0.0156237286204768,	0.00781234106010111,	0.00390623013196697,	0.00195312251647882,	0.000976562189559320,	0.000488281211194898,	0.000244140620149362,	0.000122070311893670,	6.10351561742088e-05,	3.05175781155261e-05};


void cordiccart2pol(data_t x, data_t y, data_t * r,  data_t * theta)
{
	// We want to rotate our vector defined by the Cartesian coordinates, x and y, such that it lands directly
	// on the positive side of the X-axis
	// From there, the amplitude, r, is simply the resulting cos amplitude and theta is the total angle that we rotated our vector to get there

	// First, rotate initial vector by 90 degrees such that it lands in Quadrant 1 or 4
	const data_t PI_DIV_2_RAD = angles[0] *  2;
	data_t theta_temp = (y < 0.0f) ? PI_DIV_2_RAD: -PI_DIV_2_RAD;
	data_t current_cos = (x < 0.0f) ? -x : x;
	data_t current_sin = (x < 0.0f) ? -y : y;
	//

	// After the vector is in the correct quadrant, we can start converging on the positive X-axis
	for (size_t i = 0; i< NO_ITER; i++)
	{
		// Determine polarity of rotation needed to converge
		// onto X-axis
		int sigma = (current_sin < 0.0f) ? 1 : -1;

		// TODO
		data_t cos_shift = current_cos * Kvalues[i];

		// Apply transform
		theta_temp = theta_temp + (sigma * angles[i]);

	}
}
