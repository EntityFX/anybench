#!/usr/bin/env bash
# Include common functions and operations
source common.sh

targetToFlags["x86-64"]="-march=znver2"
targetToFPU["x86-64"]=""

if [[ ${#} -eq 1 ]]; then
	echo "Compiling only ${1}"
	BINARY="${1}"
    	for ARCH in "${!targetToFlags[@]}"; do
        	compile_binary ${ARCH} ${BINARY} amd64 clang
    	done
	exit 0
fi

for BINARY in "${!binaryCompileOptions[@]}"; do
    for ARCH in "${!targetToFlags[@]}"; do
        compile_binary ${ARCH} ${BINARY} amd64 clang
    done
done
