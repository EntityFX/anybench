#!/usr/bin/env bash
# Include common functions and operations
source common.sh

targetToFlags["i386"]="-march=i386"
targetToFPU["i386"]=""

if [[ ${#} -eq 1 ]]; then
	echo "Compiling only ${1}"
	BINARY="${1}"
    	for ARCH in "${!targetToFlags[@]}"; do
        	compile_binary ${ARCH} ${BINARY} i386
    	done
	exit 0
fi

for BINARY in "${!binaryCompileOptions[@]}"; do
    for ARCH in "${!targetToFlags[@]}"; do
        compile_binary ${ARCH} ${BINARY} i386
    done
done
