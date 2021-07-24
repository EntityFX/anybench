#!/bin/bash

# Include common functions and operations
source common.sh
binaryCompileOptions["mpmflops"]="-I./include/ mp/mpmflops_s.c mp/cpuidc64.c -pthread -lm -lrt"

targetToFlags["loongarch64"]="-march=native"
targetToFPU["loongarch64"]=""


for BINARY in "${!binaryCompileOptions[@]}"; do
    for ARCH in "${!targetToFlags[@]}"; do
        compile_binary ${ARCH} ${BINARY} loongarch64
    done
done
