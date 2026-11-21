#!/bin/bash
# make_submission.sh

rm -rf submission/
mkdir submission
mkdir submission/fft
mkdir submission/fft/fft1024_best
mkdir submission/fft/Demo

## FFT
# fft1024_best
cp -L FFT/HLS/2_Skeleton_Restructured/*.cpp submission/fft/fft1024_best
cp -L FFT/HLS/2_Skeleton_Restructured/*.h submission/fft/fft1024_best
cp -L FFT/HLS/2_Skeleton_Restructured/*.tcl submission/fft/fft1024_best
cp -L FFT/HLS/2_Skeleton_Restructured/fft_csynth.rpt submission/fft/fft1024_best

#demo
cp -L FFT/HLS/FFT.ipynb submission/fft/Demo
cp -L FFT/HLS/2_Skeleton_Restructured/fft.bit submission/fft/Demo
cp -L FFT/HLS/2_Skeleton_Restructured/fft.hwh submission/fft/Demo

## OFDM
mkdir submission/ofdm_receiver
mkdir submission/ofdm_receiver/OFDM_receiver
mkdir submission/ofdm_receiver/Demo

# fft1024_best
cp -rL submission/fft/fft1024_best submission/ofdm_receiver/

# OFDM_receiver
cp -L ofdm/HLS/3_OFDM/ofdm_recvr.cpp submission/ofdm_receiver/OFDM_receiver
cp -L ofdm/HLS/3_OFDM/ofdm_recvr.h submission/ofdm_receiver/OFDM_receiver
cp -L ofdm/HLS/3_OFDM/ofdm_test.cpp submission/ofdm_receiver/OFDM_receiver
cp -L ofdm/HLS/3_OFDM/qpsk_decode.cpp submission/ofdm_receiver/OFDM_receiver
cp -L ofdm/HLS/3_OFDM/qpsk_decode.h submission/ofdm_receiver/OFDM_receiver
cp -L ofdm/HLS/3_OFDM/ofdm_receiver_csynth.rpt submission/ofdm_receiver/OFDM_receiver

# Demo
cp -L ofdm/ofdm_receiver_test.ipynb submission/ofdm_receiver/Demo
cp -L ofdm/HLS/3_OFDM/ofdm_receiver.bit submission/ofdm_receiver/Demo
cp -L ofdm/HLS/3_OFDM/ofdm_receiver.hwh submission/ofdm_receiver/Demo