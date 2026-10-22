#!/bin/bash

# My laziness knows no bounds.
# This script copies the test logs, source, and synthesis reports from the current directory
# and puts it in a new directory of your choosing

if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory_name>"
    exit 1
fi

PREFIX="cordiccart2pol"

# consts, might be able to re-use in future labs
TEST_LOG="${PREFIX}_test.log"
SYNTH_LOG="${PREFIX}_csynth.rpt"
SOURCE_USED="${PREFIX}.cpp"
HEADER_USED="${PREFIX}.h"
TEST_USED="${PREFIX}_test.cpp"
MAKEFILE_USED="Makefile"
CONFIG_INI_USED="__hls_config__.ini"
TCL_GENERATED="${PREFIX}.tcl"
LUT_R="lut_r.h"
LUT_TH="lut_th.h"

COPY_LIST=($TEST_LOG $SYNTH_LOG $SOURCE_USED $HEADER_USED $TEST_USED $MAKEFILE_USED $CONFIG_INI_USED $TCL_GENERATED $LUT_R $LUT_TH)

dir="$1"

if [ -d "$dir" ]; then
    echo "Directory '$dir' already exists. Remove first before running. Exiting..."
else
    mkdir "$dir"
    cp ${COPY_LIST[@]} "$dir"/
fi
