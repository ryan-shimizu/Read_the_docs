import numpy as np
# 89.05678179322965
# 89.39

class BNN_MNIST:

    def __init__(self, batch_size=64):
        self.batch_size = batch_size

        ## for sw
        self.sign = lambda x: float(1) if x>0 else float(-1)
        self.sign = np.vectorize(self.sign)

        self.quantize = lambda x: float(0) if x == 1 else float(1)
        self.quantize = np.vectorize(self.quantize)

        self.adj = lambda x: x*2-1
        self.adj = np.vectorize(self.adj, otypes=[float])
        self.model = np.load("weights/model.npy", allow_pickle=True).item()
        # print(model.keys)
        # dict_keys(['fc1w', 'fc2w', 'fc3w'])

        self.fc1w_q = self.sign(np.array(self.model['fc1w']))
        # (128, 784)
        self.fc2w_q = self.sign(np.array(self.model['fc2w']))
        # (64, 128)
        self.fc3w_q = self.sign(np.array(self.model['fc3w']))

        self.fc1w_qntz = self.quantize(self.fc1w_q)
        self.fc2w_qntz = self.quantize(self.fc2w_q)
        self.fc3w_qntz = self.quantize(self.fc3w_q)

    def feed_forward(self, input):
        """This BNN using normal MAC.

        :return:
        """
        X0_q = self.sign(self.adj(input))

        X1 = np.matmul(X0_q, self.fc1w_q.T)

        X1_q = self.sign(X1)

        X2 = np.matmul(X1_q, self.fc2w_q.T)

        X2_q = self.sign(X2)

        X3 = np.matmul(X2_q, self.fc3w_q.T)
        return X3

    def XNOR(self, a, b):
        if (a == b):
            return 1
        else:
            return 0

    def matmul_xnor(self, A, B):
        """This function calcualtes matrix multiplication between two vectors using XNOR.
        This function specifically designed for the current network size of 128, 64 and 10 neuron layers.

        :param A: The first quantized vector
        :param B: The second quantized  vector
        :return:
        """

        a, b = B.shape

        res = np.zeros(b)

        A1 = A.astype(int)
        B1 = B.astype(int)

        for x in range(b):
            cnt = 0
            for y in range(a):
                # cnt = cnt + A[0][y]*B[y][x]
                if a == 784:
                    cnt = cnt + self.XNOR(A1[0][y], B1[y][x])

                elif a == 128 or a == 64:
                    cnt = cnt + self.XNOR(A1[y], B1[y][x])  # XNOR

            res[x] = cnt
        return res


    def matmul_vs_xnormatmul(self):
        """ This is a toy example that demonstrates how to
        multiply two binary vectors using XNOR and popcount
        :return:
        """
        a = np.array([10, -10, -5, 9, -8, 2, 3, 1, -11])
        b = np.array([12, -18, -13, -13, -14, -15, 11, 12, 13])

        a = self.sign(a)
        b = self.sign(b)

        matmul_result = np.matmul(a, b)

        # XNOR matmul
        a = self.quantize(a)
        b = self.quantize(b)

        xnormatmul_sum = 0
        for x in range(len(a)):
            # Doing XNOR and popcount
            xnormatmul_sum = xnormatmul_sum + self.XNOR(a[x], b[x])

        print("Matmul result: {}, XNOR result: {}".
              format(matmul_result, 2*xnormatmul_sum-len(a)))

    def pack(self, A, n):
        """Helper function
        :param A:
        :param n:
        :return:
        """
        A_bit = np.array([0] * (n // 32), dtype=np.uint32)

        A_lin = np.reshape(A, (n,))

        for i in range(0, n, 32):
            A_bit[i // 32] = self.concat4(A_lin, i)

        return A_bit


    def quantize_scale(self, x):
        """Helper function
        :param x:
        :return:
        """

        if x == -1:
            return 1
        elif x == 1:
            return 0
    def concat4(self, li, point):
        """Helper function
        :param li:
        :param point:
        :return:
        """
        result = np.array([self.quantize_scale(li[point])], dtype=np.uint32)[0].astype(np.uint32)


        for k in range(1, 32):
            i = point + k
            result <<= 1
            result &= 0xFFFFFFFF
            result |= self.quantize_scale(li[i])
            result &= 0xFFFFFFFF
        return result.astype(np.uint32)

    def preprocessModel(self, X, y):
        """Helper function
        :param X:
        :param y:
        :return:
        """
        sample = 2
        numpydict = {"X": [], "y": []}

        X0_q = np.array([list(arr) + [1] * 16 for arr in X])

        X0_bit = self.pack(X0_q, X0_q.shape[0] * X0_q.shape[1])
        Y0 = y
        numpydict["X"].append(X0_bit)
        numpydict["y"].append(Y0)

        np.save('dataset/mnist-bit_sample{}.npy'.format(sample), numpydict, allow_pickle=True)


    def create_input(self, num_of_samples):
        """This function creates packed weights for a given number of samples.
        The created inputs are used for HLS tesbench.

        :param num_of_samples:
        :return:
        """

        mnist = np.load("dataset/mnist_test_data_original.npy", allow_pickle=True)
        X = mnist.item().get("data")
        y = mnist.item().get("label")

        X = np.reshape(X, (10000, 784))

        if num_of_samples == 0:
            num_of_samples = (len(X) // self.batch_size)

        numpydict = {"X": [], "y": []}

        for idx in range(num_of_samples):
            xs = X[self.batch_size * idx:self.batch_size * idx + self.batch_size]
            ys = y[self.batch_size * idx:self.batch_size * idx + self.batch_size]

            X0_q = self.sign(self.adj(xs))
            self.preprocessModel(X0_q, ys)

            X0_q = np.array([list(arr) + [1] * 16 for arr in X0_q])

            X0_bit = self.pack(X0_q, X0_q.shape[0] * X0_q.shape[1])
            Y0 = ys
            numpydict["X"].append(X0_bit)
            numpydict["y"].append(Y0)

        np.save('dataset/mnist-bit_sample{}.npy'.format(num_of_samples), numpydict, allow_pickle=True)



    def create_packed_weights(self):
        """Helper function: This function creates packed weights for HLS.

        :return:
        """

        fc1w_q = np.array([list(arr) + ([0] * 16) for arr in self.fc1w_qntz])
        fc1w_bit = self.pack(fc1w_q.T.T, fc1w_q.shape[0] * fc1w_q.shape[1])
        fc1w_bit = self.pack(fc1w_q, fc1w_q.shape[0] * fc1w_q.shape[1])

        fc2w_q = self.fc2w_qntz
        fc2w_bit = self.pack(fc2w_q, fc2w_q.shape[0] * fc2w_q.shape[1])

        fc3w_q = self.fc3w_qntz
        fc3w_bit = self.pack(fc3w_q, fc3w_q.shape[0] * fc3w_q.shape[1])

        np.savetxt('weights/layer1.txt', fc1w_bit)
        np.savetxt('weights/layer2.txt', fc2w_bit)
        np.savetxt('weights/layer3.txt', fc3w_bit)


        return fc1w_bit, fc2w_bit, fc3w_bit


    def write_to_file(self, w1, w2, w3):
        """ Helper function
        :param w1:
        :param w2:
        :param w3:
        :return:
        """
        # Writing to file
        with open("weights/layer1_c.txt", "w") as file1:
            # Writing data to a file
            for x in range(len(w1)):
                file1.writelines(str(w1[x])+",")

        with open("weights/layer2_c.txt", "w") as file1:
            # Writing data to a file
            for x in range(len(w2)):
                file1.writelines(str(w2[x])+",")

        with open("weights/layer3_c.txt", "w") as file1:
            # Writing data to a file
            for x in range(len(w3)):
                file1.writelines(str(w3[x])+",")

    def hlscode(self):
        """This is a reference implementation for HLS.
        Intentionally, left empty so that students implement the HLS ref design.

        :return:
        """

        print("Done")


    def feed_forward_quantized(self, input):
        """This function does BNN. Uses XNOR.

        :param input: MNIST sample input
        :return:
        """
        # layer 1
        X0_input = self.quantize(self.sign(self.adj(input)))
        layer1_output = self.matmul_xnor(X0_input, self.fc1w_qntz.T)
        layer1_activations = (layer1_output * 2 - 784)

        # layer 2
        layer2_input = self.sign(layer1_activations)
        layer2_quantized = self.quantize(layer2_input)
        layer2_output = self.matmul_xnor(layer2_quantized, self.fc2w_qntz.T)
        layer2_activations = (layer2_output * 2 - 128)

        # layer 3
        layer3_input = self.sign(layer2_activations)
        layer3_quantized = self.quantize(layer3_input)
        layer3_output = self.matmul_xnor(layer3_quantized, self.fc3w_qntz.T)

        final_output = (layer3_output * 2 - 64)
        A = np.array([final_output], np.int32)

        return A


    def visualize(self, data, true_label, predicated_label):
        """This function prints image, true label and predicted label.

        :param data:
        :param true_label:
        :param predicated_label:
        :return:
        """
        # Visualization
        import matplotlib.pyplot as plt

        # Import the matplotlib.pyplot module for visualization purposes

        plt.imshow(data, cmap='gray')
        # Display the image at index 0 from the train_data dataset using imshow()
        # The cmap='gray' argument specifies that the image should be displayed in grayscale

        plt.title("true label: {}, predicted label :{}".format(true_label, predicated_label))
        # Set the title of the plot to the label/target corresponding to the image at index 0
        # The '%i' is a placeholder that will be replaced by the value of train_data.targets[0]

        plt.show()
        # Display the plot

    def run_test_visalize(self, num_samples):
        """This function is for debugging. Used for visualizing
        the input (MNIST image), the predicted output and the true output.

        :return:
        """


        mnist = np.load("dataset/mnist_test_data_original.npy", allow_pickle=True)
        X = mnist.item().get("data")
        y = mnist.item().get("label")

        # self.visualize(X[0], y[0], y[0])
        X = np.reshape(X, (10000, 784))
        print(X.shape)


        for idx in range(num_samples):
            xs = X[idx]
            ys = y[idx]
            outputs = self.feed_forward(xs)
            xs_plot = np.reshape(xs, (28, 28))
            self.visualize(xs_plot, ys, np.argmax(outputs))

    def run_test(self, use_normal_mac=False):
        """This function is for testing

        :param use_normal_mac: Setting this parameter calls self.feed_forward (uses MAC),
        otherwise, it calls feed_forward_quantized which uses XNOR

        :return:
        """

        prediction = []

        i = 0

        mnist = np.load("dataset/mnist_test_data_original.npy", allow_pickle=True)
        X = mnist.item().get("data")
        y = mnist.item().get("label")

        # self.visualize(X[0], y[0], y[0])
        X = np.reshape(X, (10000, 784))
        print("The shape of the input: {}".format(X.shape))

        # mnist = np.load("dataset/mnist-original.npy", allow_pickle=True)
        # X = mnist.item().get("data").T
        # y = mnist.item().get("label")[0]

        if use_normal_mac is True:
            inference_function = self.feed_forward
        else:
            inference_function = self.feed_forward_quantized


        for idx in range(len(X) // self.batch_size):
        # for idx in range(10):
            xs = X[self.batch_size * idx:self.batch_size * idx + self.batch_size]
            ys = y[self.batch_size * idx:self.batch_size * idx + self.batch_size]

            # outputs = self.feed_forward(xs)
            # outputs = self.feed_forward_quantized(xs)
            outputs = inference_function(xs)


            for output, yk in zip(outputs, ys):
                prediction.append(np.argmax(output) == (yk))
            i += 1
            # print("{}th iter".format(idx))
            # print("Predicted: {}, True: {}".format(np.argmax(output), yk))


        score = np.mean(prediction) * 100
        # print(score)
        return score

    def pack_bits16(self, bits):
        """Pack 0/1 bits along the last axis into int16 words, MSB first.
        bit 1 means -1 and bit 0 means +1 (same encoding as quantize()).
        (..., n) -> (..., n // 16)
        """
        bits = np.asarray(bits).astype(np.int64)
        n = bits.shape[-1]
        assert n % 16 == 0
        grouped = bits.reshape(bits.shape[:-1] + (n // 16, 16))
        words = (grouped << np.arange(15, -1, -1)).sum(axis=-1)
        words = np.where(words >= (1 << 15), words - (1 << 16), words)  # two's complement
        return words.astype(np.int16)

    @staticmethod
    def _write_c_array(f, ctype, name, arr, per_line=16, two_d=False):
        """Write a C++ array. two_d=True emits name[rows][cols] with one braced
        row per line (used for weights, so HLS can partition per neuron or per word).
        Otherwise the array is flattened row-major."""
        arr = np.asarray(arr)
        if two_d:
            rows, cols = arr.shape
            f.write("static const {} {}[{}][{}] = {{\n".format(ctype, name, rows, cols))
            for r in range(rows):
                f.write("    {" + ", ".join(str(int(v)) for v in arr[r]) + "},\n")
            f.write("};\n\n")
            return
        flat = arr.flatten()
        f.write("static const {} {}[{}] = {{\n".format(ctype, name, flat.size))
        for i in range(0, flat.size, per_line):
            f.write("    " + ", ".join(str(int(v)) for v in flat[i:i + per_line]) + ",\n")
        f.write("};\n\n")

    def generate_golden_header(self, num_samples=10, path="../hls/golden.h"):
        """Writes a C++ header with packed inputs, packed weights and golden
        outputs (from the XNOR reference model) for an HLS design and testbench."""
        import os
        os.makedirs(os.path.dirname(path) or ".", exist_ok=True)

        mnist = np.load("dataset/mnist_test_data_original.npy", allow_pickle=True)
        X = np.reshape(mnist.item().get("data"), (10000, 784))[:num_samples]
        y = np.asarray(mnist.item().get("label")).flatten()[:num_samples].astype(int)

        # Inputs: binarize to +-1, then bit = 1 where the value is -1
        in_bits = (self.sign(self.adj(X)) == -1).astype(int)       # (N, 784)
        inputs = self.pack_bits16(in_bits)                         # (N, 49)

        # Weights: fc*w_qntz is already 0/1 (1 means weight -1)
        w1 = self.pack_bits16(self.fc1w_qntz)                      # (128, 49)
        w2 = self.pack_bits16(self.fc2w_qntz)                      # (64, 8)
        w3 = self.pack_bits16(self.fc3w_qntz)                      # (10, 4)

        # Golden outputs from the XNOR model, one sample at a time
        golden = np.zeros((num_samples, 10), dtype=np.int32)
        for k in range(num_samples):
            golden[k] = self.feed_forward_quantized(X[k:k + 1])[0]
        pred = np.argmax(golden, axis=1)

        with open(path, "w") as f:
            f.write("// Auto-generated by BNN_MNIST.generate_golden_header(). Do not edit.\n")
            f.write("#ifndef GOLDEN_H\n#define GOLDEN_H\n\n#include <stdint.h>\n\n")
            f.write("#define N_SAMPLES {}\n".format(num_samples))
            f.write("#define IN_WORDS  {}   // 784 bits / 16\n".format(inputs.shape[1]))
            f.write("#define L1_WORDS  {}   // 784 bits / 16 per neuron (128 neurons)\n".format(w1.shape[1]))
            f.write("#define L2_WORDS  {}    // 128 bits / 16 per neuron (64 neurons)\n".format(w2.shape[1]))
            f.write("#define L3_WORDS  {}    // 64 bits / 16 per neuron (10 neurons)\n\n".format(w3.shape[1]))
            f.write("// Packing: 16 bits per int16, MSB first, bit 1 = -1, bit 0 = +1.\n")
            f.write("// Weights are 2D [neuron][word]; inputs and outputs are flat, row-major.\n\n")

            self._write_c_array(f, "int16_t", "golden_inputs", inputs)             # [N*49]
            self._write_c_array(f, "int16_t", "golden_w1", w1, two_d=True)         # [128][49]
            self._write_c_array(f, "int16_t", "golden_w2", w2, two_d=True)         # [64][8]
            self._write_c_array(f, "int16_t", "golden_w3", w3, two_d=True)         # [10][4]
            self._write_c_array(f, "int32_t", "golden_outputs", golden)            # [N*10]
            self._write_c_array(f, "int32_t", "golden_labels", y)                  # [N]
            self._write_c_array(f, "int32_t", "golden_pred", pred)                 # [N]

            f.write("#endif // GOLDEN_H\n")

        print("Wrote {} ({} samples, XNOR accuracy on them: {:.1f}%)".format(
            path, num_samples, 100.0 * np.mean(pred == y)))

if __name__ == "__main__":
    run_option = 8
    bnn = BNN_MNIST(batch_size=1)

    if run_option == 1:
        print("Running BNN which uses XNOR")
        print("Accuracy:", bnn.run_test(use_normal_mac=False))
    elif  run_option == 2:
        print("Running BNN which uses MAC")
        print("Accuracy:", bnn.run_test(use_normal_mac=True))
    elif run_option == 3:
        print("Running BNN for HLS reference")
        bnn.hlscode()
    elif run_option == 4:
        print("Creating packed inputs")
        bnn.create_input(10)
    elif run_option == 5:
        print("Creating packed weights")
        bnn.create_packed_weights()
    elif run_option == 6:
        print("XNOR vector multiplication example")
        bnn.matmul_vs_xnormatmul()
    elif run_option == 7:
        print("BNN test")
        bnn.run_test_visalize(num_samples=3)
    elif run_option == 8:
        print("Generating hls/golden.h")
        bnn.generate_golden_header(num_samples=10)
