#!/bin/bash

# My laziness knows no bounds.
# This script copies the test logs, source, and synthesis reports from the current directory
# and puts it in a new directory of your choosing

if [ $# -ne 2 ]; then
    echo "Usage: $0 <width> <directory_name>"
    exit 1
fi

PREFIX="dft"
WIDTH="$1"
SOURCE_PREFIX="dft_${WIDTH}_precomputed"

# consts, might be able to re-use in future labs
TEST_LOG="${SOURCE_PREFIX}/${PREFIX}_test.log"
SYNTH_LOG="${SOURCE_PREFIX}/${PREFIX}_csynth.rpt"
SOURCE_USED="${SOURCE_PREFIX}/${PREFIX}.cpp"
HEADER_USED="${SOURCE_PREFIX}/${PREFIX}.h"
TEST_USED="${SOURCE_PREFIX}/${PREFIX}_test.cpp"
MAKEFILE_USED="${SOURCE_PREFIX}/Makefile"
CONFIG_INI_USED="${SOURCE_PREFIX}/__hls_config__.ini"
TCL_GENERATED="${SOURCE_PREFIX}/${PREFIX}.tcl"
OUTPUT_DFT="${SOURCE_PREFIX}/output_dft/"
BUILD_LOG="${SOURCE_PREFIX}/logs/hls_run_tcl.log"

# coefficient files
COEFF_H="${SOURCE_PREFIX}/coefficients${WIDTH}*.h"

COPY_LIST=($TEST_LOG $SYNTH_LOG $SOURCE_USED $HEADER_USED $TEST_USED $MAKEFILE_USED $CONFIG_INI_USED $TCL_GENERATED $COEFF_H $OUTPUT_DFT $BUILD_LOG)

dir="$2"


if [ -d "$dir" ]; then
    echo "Directory '$dir' already exists. Remove first before running. Exiting..."
else
    mkdir "$dir"
    cp -R ${COPY_LIST[@]} "$dir"/ 2>/dev/null || :
fi
