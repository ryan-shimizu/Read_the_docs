#include "dft.h"
// #include"coefficients1024.h"

// using quadruplicated 1D coeff table
#include "coefficients1024_1D_rep4.h"

#define U 8     // number of data lanes, used for pipelining
#define ITERS (SIZE / U)
typedef ap_uint<10> idx_t;      // weird hack for optimizing a %1024 operation out :P

void dft(hls::stream<axis_t> &in_stream, hls::stream<axis_t> &out_stream)
{
    // AXI-Stream data ports (to/from the AXI DMA) and AXI-Lite for start/done control
    #pragma HLS INTERFACE axis port=in_stream
    #pragma HLS INTERFACE axis port=out_stream
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    // replicating sin_coefficients_table and cos_coefficients_table
    // each BRAM only has 2 read ports, creating a bottleneck at those arrays
    // we can fix this by replicating U/2 times, which is cheap

    // we choose complete dim=1 to partition over the copy index only
    // without partitioning, HLS will try to treat as one BRAM, which defeats the purpose of replicating
    // so we partition over the redundant dimension ONLY, and leave the 1024-entry dimension alone:
    #pragma HLS ARRAY_PARTITION variable=cos_rep complete dim=1
    #pragma HLS ARRAY_PARTITION variable=sin_rep complete dim=1

    // this part is probably unnecessary (gets auto assigned), but just making sure HLS implements this as a BRAM block
    #pragma HLS BIND_STORAGE variable=cos_rep type=rom_2p impl=bram
    #pragma HLS BIND_STORAGE variable=sin_rep type=rom_2p impl=bram
    DTYPE real_sample[SIZE];
    DTYPE imag_sample[SIZE];

    // Temporary arrays to hold the intermediate frequency domain results
    TEMP_TYPE temp_real[ITERS][U];
    TEMP_TYPE temp_imag[ITERS][U];
    // same reasoning as above, we want to partition into U different arrays of ITERS entries each
    #pragma HLS ARRAY_PARTITION variable=temp_real complete dim=2
    #pragma HLS ARRAY_PARTITION variable=temp_imag complete dim=2

    // stream in one complex sample per cycle
    for (int n = 0; n < SIZE; n++) {
        #pragma HLS PIPELINE II=1
        axis_t pkt = in_stream.read();
        unpack_sample(pkt, real_sample[n], imag_sample[n]);
    }

    // Zero-initialize accumulators
    for(int k = 0; k < ITERS; k++)
    {
        // now we can finally unroll
        #pragma HLS PIPELINE II=1
        for(int u = 0; u < U; u++) {
            temp_real[k][u] = 0;
            temp_imag[k][u] = 0;
        }
    }
    
    // Calculate each frequency domain sample iteratively
    for (int t = 0; t < SIZE * ITERS; t++) {
        #pragma HLS PIPELINE II=1
        // another weird hack, HLS realizes that b is only known at runtime and can't *guarantee*
        // that the next iteration will touch the same element that the current iteration is still updating.
        // in this scenario, HLS will play safe and assume there is a dependency between each iteration.
        // this isn't a problem when U=8 and ITERS=128 because b cycles through 128 and repeats, which takes far longer
        // than a float add and write to finish, so this is safe!
        // "trust me bro"
        #pragma HLS DEPENDENCE variable=temp_real inter false
        #pragma HLS DEPENDENCE variable=temp_imag inter false

        idx_t j = t / ITERS;      // input sample index
        int b = t % ITERS;        // output block index
        DTYPE a = real_sample[j];
        DTYPE d = imag_sample[j];

        for (int u = 0; u < U; u++) {
            idx_t out_idx = b * U + u;       // output bin k
            idx_t idx     = out_idx * j;     // (k*n) mod 1024, truncated for free
            TEMP_TYPE c = cos_rep[u >> 1][idx];
            TEMP_TYPE s = sin_rep[u >> 1][idx];   // table already holds -sin
            temp_real[b][u] += a * c - d * s;
            temp_imag[b][u] += a * s + d * c;
        }
    }

    // Assign to output array
    for (int o = 0; o < SIZE; o++) {
        #pragma HLS PIPELINE II=1
        out_stream.write(pack_sample(temp_real[o / U][o % U],
                                     temp_imag[o / U][o % U],
                                     o == SIZE - 1));
    }
}
