#include "bnn.h"
#include "golden.h"
#include <stdio.h>
#include <iostream>
#include <string>

int verify_output(string name, const int golden[10], const ITYPE predicted[10]) {
    cout << "-----------------------------------------------------------" << endl;
    cout << "Verifying the sample: " << name << endl;

    int PASS = 1;
    for (int i = 0; i < 10; i++) {
        if (golden[i] != predicted[i]) {
            PASS = 0;
            cout << "Wrong output [" << i << "]: Expected: " << golden[i]
                 << " Obtained: " << predicted[i] << endl;
        }
    }

    cout << "Sample: " << name << (PASS ? " PASSED" : " FAILED") << endl;
    return PASS;
}

int argmax10(const int v[10]) {
    int best = 0;
    for (int i = 1; i < 10; i++) {
		if (v[i] > v[best]) {
			best = i;
		}
	}
    return best;
}

int main()
{
    int n_pass = 0;
    int n_correct = 0;

    for (int s = 0; s < N_SAMPLES; s++) {
        // Copy the packed input into a local buffer, since bnn() takes DTYPE IN[SIZE]
        DTYPE in[SIZE];
        for (int j = 0; j < SIZE; j++) {
            in[j] = golden_inputs[s * IN_WORDS + j];
        }

        ITYPE out[10];
        for (int i = 0; i < 10; i++) {
			out[i] = 0;
		}

        bnn(in, out);

        const int *golden = &golden_outputs[s * 10];

        n_pass += verify_output("Sample " + to_string(s), golden, out);

        int out_i[10];
        for (int i = 0; i < 10; i++) { 
			out_i[i] = (int)out[i];
		}
        int pred = argmax10(out_i);
        cout << "True label: " << golden_labels[s] << "  Predicted: " << pred << endl;
        if (pred == golden_labels[s]) { 
			n_correct++;
		}
    }

    cout << "===========================================================" << endl;
    cout << n_pass << " / " << N_SAMPLES << " samples matched the golden outputs" << endl;
    cout << n_correct << " / " << N_SAMPLES << " predictions matched the true labels" << endl;

    return (n_pass == N_SAMPLES) ? 0 : 1;
}