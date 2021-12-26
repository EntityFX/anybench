#!/bin/bash

# Include common functions and operations
source common.sh
binaryCompileOptions["mpmflops"]="-I./include/ -Ibenchmarks/common/ benchmarks/generic/mpmflops/mpmflops_s.c benchmarks/common//cpuidc64.c -pthread -lm -lrt"

targetToFlags["loongarch64"]="-march=native"
targetToFPU["loongarch64"]=""

if [[ ${#} -eq 1 ]]; then
	echo "Compiling only ${1}"
	BINARY="${1}"
    	for ARCH in "${!targetToFlags[@]}"; do
        	compile_binary ${ARCH} ${BINARY} loongarch64
    	done
	exit 0
fi

for BINARY in "${!binaryCompileOptions[@]}"; do
    for ARCH in "${!targetToFlags[@]}"; do
        compile_binary ${ARCH} ${BINARY} loongarch64
    done
done
