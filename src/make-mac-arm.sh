#!/usr/bin/env bash
# Include common functions and operations
source common.sh
binaryCompileOptions["whetstonemp"]="-I./include/ mp/whetsmp.c mp/cpuidc64.c -pthread -lm"
binaryCompileOptions["mpmflops"]="-I./include/ mp/mpmflops.c mp/cpuidc64.c -pthread -lm"

set -e

# aarch64
targetToFlags["native"]=""
targetToFlags["armv8.4-a"]="-mcpu=apple-m1"
    
for BINARY in "${!binaryCompileOptions[@]}"; do
    for ARCH in "${!targetToFlags[@]}"; do
        compile_binary ${ARCH} ${BINARY} arm
    done
done
