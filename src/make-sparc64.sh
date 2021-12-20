#!/usr/bin/env bash
# Include common functions and operations
source common.sh

targetToFlags["sparc64"]="-mcpu=v9"
dotToFPU["sparc64"]=""

if [[ ${#} -eq 1 ]]; then
	echo "Compiling only ${1}"
	BINARY="${1}"
    	for ARCH in "${!targetToFlags[@]}"; do
        	compile_binary ${ARCH} ${BINARY} sparc64
    	done
	exit 0
fi

for BINARY in "${!binaryCompileOptions[@]}"; do
	for ARCH in "${!targetToFlags[@]}"; do
        	compile_binary ${ARCH} ${BINARY} sparc64
	done
done
