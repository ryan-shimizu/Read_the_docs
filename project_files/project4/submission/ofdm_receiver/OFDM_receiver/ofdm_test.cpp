
#include <stdio.h>
#include <stdlib.h>
#include "ofdm_recvr.h"

int main()
{
    const int FSIZE = 35000;
    const int NF = FSIZE / SIZE;                       // complete frames (34)
    static DTYPE    In_R[FSIZE], In_I[FSIZE];
    static uint32_t Sym[NF * SIZE];
    static int      gold[FSIZE];

    FILE *fp = fopen("input.dat", "r");
    if (!fp) { 
        printf("cannot open input.dat\n"); 
        return 1;
    }
    printf("Reading INPUTS\n");
    int n_ok = 0;
    for (int i = 0; i < FSIZE; i++) {
        if (fscanf(fp, "%f %f\n", &In_R[i], &In_I[i]) == 2) {
            n_ok++;
        }
    }

    fclose(fp);

    printf("read %d of %d samples\n", n_ok, FSIZE);

    ofdm_receiver(In_R, In_I, Sym, NF);

    printf("Comparing with golden output\n");
    fp = fopen("out.gold.dat", "r");
    if (!fp) { 
        printf("cannot open out.gold.dat\n"); 
        return 1;
    }
    for (int i = 0; i < FSIZE; i++) {
        if (fscanf(fp, "%d", &gold[i]) != 1) {
            printf("golden file too short at %d\n", i); 
            return 1; 
        }
    }

    fclose(fp);

    int result = 0, shown = 0;
    for (int i = 0; i < SIZE; i++) {
        if (gold[i] != 0) {
            if (shown++ < 20) {
                printf("golden[%d] = %d, expected 0\n", i, gold[i]);
            }
            result = 1; 
        }
    }

    for (int f = 0; f < NF; f++) {
        for (int k = 0; k < SIZE; k++) {
            int g = (f + 1) * SIZE + k;
            // golden ends part-way through the last frame
            if (g >= FSIZE) { 
                break;
            }                       
            if (gold[g] != (int)Sym[f * SIZE + k]) {
                if (shown++ < 20) {
                    printf("miss match: frame %d bin %d (golden i: %d)\tgolden: %d\toutput: %u\n", f, k, g, gold[g], Sym[f * SIZE + k]);
                }
                result = 1;
            }
        }
    }

	if (result) {
		fprintf(stdout, "*******************************************\n");
		fprintf(stdout, "FAIL: Output DOES NOT match the golden output\n");
		fprintf(stdout, "*******************************************\n");
		return result;
	} else {
		fprintf(stdout, "*******************************************\n");
		fprintf(stdout, "PASS: The output matches the golden output!\n");
		fprintf(stdout, "*******************************************\n");
		return result;
    }
}
