#ifndef OFDM_RECVR_H_
#define OFDM_RECVR_H_

#include <stdint.h>
#include "fft_common.h"

// Frame-based OFDM receiver
//   X_R, X_I : nframes * SIZE samples each (real / imaginary), natural order
//   SYM      : nframes * SIZE decoded symbols (0..3); frame f is the decode of input frame f
//   nframes  : number of frames to process in this start
void ofdm_receiver( DTYPE *X_R, DTYPE *X_I, uint32_t *SYM, int nframes );

#endif // OFDM_RECVR_H_
