#!/usr/bin/env bash
# Include common functions and operations
source common.sh
source common-make.sh
optFlags="-O2 -O3 -Ofast"

targetToFlags["parisc64"]="-march=native"
targetToFlags["parisc64-2.0"]="-march=2.0"

binaryCompileOptions["STREAM"]="benchmarks/generic/STREAM/stream.c -DSTREAM_ARRAY_SIZE=4000000 -DNTIMES=10 ${extraLinkerOptions}"

if [[ ${#} -eq 1 ]]; then
    echo "Compiling only ${1}"
    BINARY="${1}"
    for ARCH in "${!targetToFlags[@]}"; do
        compile_binary ${ARCH} ${BINARY} parisc64 ${COMPILER}
    done
    exit 0
fi

for BINARY in "${!binaryCompileOptions[@]}"; do
    for ARCH in "${!targetToFlags[@]}"; do
        compile_binary ${ARCH} ${BINARY} parisc64 ${COMPILER}
    done
done
