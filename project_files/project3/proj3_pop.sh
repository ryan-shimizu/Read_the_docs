#!/bin/bash

# My laziness knows no bounds.
# This script pops the changes made in the folder specified
# by replacing the source files in it to the current directory

if [ $# -ne 2 ]; then
    echo "Usage: $0 <width> <directory_name>"
    exit 1
fi


PREFIX="dft"
WIDTH="$1"
SOURCE_PREFIX="dft_${WIDTH}_precomputed"


# consts, might be able to re-use in future labs
SOURCE_USED="${SOURCE_PREFIX}/${PREFIX}.cpp"
HEADER_USED="${SOURCE_PREFIX}/${PREFIX}.h"

COPY_LIST=($SOURCE_USED $HEADER_USED)

dir="$1"


if [ -d "$dir" ]; then
    rm ${COPY_LIST[@]}
    for item in "${COPY_LIST[@]}"
    do
        cp "$dir/$item" .
    done
else
    echo "Directory does not exist. Exiting..."
fi

