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

# coefficient files
COEFF_1D="${SOURCE_PREFIX}/coefficients${WIDTH}.h"
COEFF_2D="${SOURCE_PREFIX}/coefficients${WIDTH}_2D.h"


COPY_LIST=($TEST_LOG $SYNTH_LOG $SOURCE_USED $HEADER_USED $TEST_USED $MAKEFILE_USED $CONFIG_INI_USED $TCL_GENERATED $COEFF_1D $COEFF_2D)

dir="$2"


if [ -d "$dir" ]; then
    echo "Directory '$dir' already exists. Remove first before running. Exiting..."
else
    mkdir "$dir"
    cp ${COPY_LIST[@]} "$dir"/
fi
