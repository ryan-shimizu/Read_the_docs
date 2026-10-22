#include "cordiccart2pol.h"
#include <math.h>
#include <stdio.h>


struct Rmse
{
	int num_sq;
	float sum_sq;
	float error;

	Rmse(){ num_sq = 0; sum_sq = 0; error = 0; }

	float add_value(float d_n)
	{
		num_sq++;
		sum_sq += (d_n*d_n);
		error = sqrtf(sum_sq / num_sq);
		return error;
	}

};


Rmse rmse_theta;
Rmse rmse_r;


void run_test(data_t x, data_t y, double golden_theta, double golden_r)
{
	data_t r;
	data_t theta;

	cordiccart2pol(x, y, &r,  &theta);

	printf("Test: x=%.4f, y=%.4f, golden theta=%.4f, golden r=%.4f, your theta=%.4f, your r=%.4f\n",
			(double)x, (double)y, golden_theta, golden_r, (double)theta, (double)r);

	rmse_theta.add_value((float)theta - golden_theta);
	rmse_r.add_value((float)r - golden_r);
}


int main()
{
	data_t x;
	data_t y;
	data_t r;
	data_t theta;


	printf("---Testing results----------------------------------\n");

	// Test1
	run_test(0.8147, 0.1269, 0.154521173805634, 0.824523923242982);

	// Test 2
	run_test(0.6323, -0.2785, -0.414888412375609, 0.690916449362729);

	// Test 3
	run_test(-0.5469, -0.9575, -2.089751217098013, 1.102681214132172);

	// Test 4
	run_test(-0.4854, 0.7003, 2.176897679895152, 0.852075847562880);

	// Additional tests
	// Test 5: +x axis
	run_test(0.9, 0.0, 0.000000000000000, 0.900000000000000);

	// Test 6: +y axis
	run_test(0.0, 0.7, 1.570796326794897, 0.700000000000000);

	// Test 7: -x axis (theta = +pi, branch cut)
	run_test(-0.8, 0.0, 3.141592653589793, 0.800000000000000);

	// Test 8: -y axis
	run_test(0.0, -0.6, -1.570796326794897, 0.600000000000000);

	// Test 9: 45 degrees in each quadrant
	run_test(0.5, 0.5, 0.785398163397448, 0.707106781186548);

	// Test 10
	run_test(-0.5, 0.5, 2.356194490192345, 0.707106781186548);

	// Test 11
	run_test(-0.5, -0.5, -2.356194490192345, 0.707106781186548);

	// Test 12
	run_test(0.5, -0.5, -0.785398163397448, 0.707106781186548);

	// Test 13: near-axis, same r in all four
	run_test(0.9511, 0.0309, 0.032477273757622, 0.951601817989016);

	// Test 14
	run_test(0.0309, 0.9511, 1.538319053037275, 0.951601817989016);

	// Test 15
	run_test(-0.0309, -0.9511, -1.603273600552518, 0.951601817989016);

	// Test 16
	run_test(-0.9511, -0.0309, -3.109115379832172, 0.951601817989016);

	// Test 17: small magnitude (fixed-point precision)
	run_test(0.0123, 0.0045, 0.350727948248204, 0.013097327971766);

	// Test 18
	run_test(-0.0123, 0.0045, 2.790864705341590, 0.013097327971766);

	// Test 19: r > 1 (range/overflow)
	run_test(0.9, 0.9, 0.785398163397448, 1.272792206135785);

	// Test 20
	run_test(-0.9, -0.9, -2.356194490192345, 1.272792206135785);

	// Test 21: mixed
	run_test(0.2, -0.9, -1.352127380920955, 0.921954445729289);

	// Test 22
	run_test(-0.1, 0.95, 1.675673265525131, 0.955248658727140);

	printf("---RMS error----------------------------------\n");
	printf("----------------------------------------------\n");
	printf("   RMSE(R)           RMSE(Theta)\n");
	printf("%0.15f %0.15f\n", rmse_r.error, rmse_theta.error);
	printf("----------------------------------------------\n");


	float error_threshold = 0.001;

    int success = (rmse_r.error < error_threshold) && (rmse_theta.error < error_threshold);

    if (success) return 0;
    else return 1;

}
