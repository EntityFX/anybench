#!/bin/bash

# Include common functions and operations
source common.sh

targetToFlags["loongarch64"]="-march=loongarch64"
targetToFPU["loongarch64"]=""


for BINARY in "${!binaryCompileOptions[@]}"; do
    for ARCH in "${!targetToFlags[@]}"; do
        compile_binary ${ARCH} ${BINARY} loongarch64
    done
done
