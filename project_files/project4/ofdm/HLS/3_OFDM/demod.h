#ifndef DEMOD_H_
#define DEMOD_H_

#include "fft_common.h"

void demod(DTYPE X_R[SIZE], DTYPE X_I[SIZE], int D[SIZE], DTYPE OUT_R[SIZE], DTYPE OUT_I[SIZE]);

#endif // DEMOD_H_