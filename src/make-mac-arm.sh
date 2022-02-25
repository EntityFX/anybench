#!/usr/bin/env bash
# Include common functions and operations
source common.sh
source common-make.sh

# aarch64
targetToFlags["armv8.4-a"]="-march=armv8.4-a -mtune=native"

targetToFPU["armv8.4-a"]="-mcpu=apple-m1"

if [[ ${#} -eq 1 ]]; then
    echo "Compiling only ${1}"
    BINARY="${1}"
    for ARCH in "${!targetToFlags[@]}"; do
        compile_binary ${ARCH} ${BINARY} arm ${COMPILER}
    done
    exit 0
fi

for BINARY in "${!binaryCompileOptions[@]}"; do
    for ARCH in "${!targetToFlags[@]}"; do
            compile_binary ${ARCH} ${BINARY} arm ${COMPILER}
    done
done
