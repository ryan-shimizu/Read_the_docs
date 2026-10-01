#!/bin/bash

# My laziness knows no bounds.
# This script copies the test logs and synthesis reports from the current directory
# and puts it in a new directory of your choosing

if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory_name>"
    exit 1
fi

# consts, might be able to re-use in future labs
TEST_LOG="fir_test.log"
SYNTH_LOG="fir_csynth.rpt"
SOURCE_USED="fir.cpp"
HEADER_USED="fir.h"

COPY_LIST=($TEST_LOG $SYNTH_LOG $SOURCE_USED $HEADER_USED)

dir="$1"

if [ -d "$dir" ]; then
    echo "Directory '$dir' already exists. Skipping mkdir..."
else
    mkdir "$dir"
fi

cp ${COPY_LIST[@]} "$dir"/