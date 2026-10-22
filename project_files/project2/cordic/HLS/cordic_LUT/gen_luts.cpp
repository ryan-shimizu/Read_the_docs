#include "cordiccart2pol.h"
#include <cstdio>
#include <math.h>

data_t my_LUT_th[LUT_SIZE];
data_t my_LUT_r[LUT_SIZE];

void init_cart2pol_LUTs(data_t my_LUT_th[LUT_SIZE], data_t my_LUT_r[LUT_SIZE])
{
	// Fill the LUT values with their appropriate R and theta values
	for(int i=0; i<LUT_SIZE; i++){
		ap_uint<2*W> index = i;
		ap_fixed<W, I, AP_RND, AP_WRAP, 1> fixed_x;
		ap_fixed<W, I, AP_RND, AP_WRAP, 1> fixed_y;

		for(int j = 0; j < W; j++)
			{
				fixed_x[W-1-j] = index[2*W-1-j];
				fixed_y[W-1-j] = index[W-1-j];
			}

		float _x = fixed_x;
		float _y = fixed_y;

		if((_x == 0) & (_y == 0)){
			my_LUT_th[index] = 0;
			my_LUT_r[index]  = 0;
		}
		else{
			my_LUT_th[index] = atan2f(_y, _x);
			my_LUT_r[index]  = sqrtf((_y*_y)+(_x*_x));
		}
	}
}

static void dump(const char *path, const data_t *lut)
{
	FILE *f = fopen(path, "w");
	for (int i = 0; i < LUT_SIZE; i++)
		fprintf(f, "%.17g,%s", (double)lut[i], (i % 16 == 15) ? "\n" : " ");
	fclose(f);
}

int main()
{
	init_cart2pol_LUTs(my_LUT_th, my_LUT_r);
	dump("lut_th.h", my_LUT_th);
	dump("lut_r.h",  my_LUT_r);
	return 0;
}