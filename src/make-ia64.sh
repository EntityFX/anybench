#!/usr/bin/env bash
# Include common functions and operations
source common.sh

targetToFlags["ia64"]=""

COMPILER=""
# pass "--cc COMPILER" to set COMPILER, must be at the end.
if [ $# -eq 2 ]; then
	if [ $1 == "--cc" ]; then
		COMPILER=$2
	fi
fi

if [ $# -eq 3 ]; then
	if [ $2 == "--cc" ]; then
		COMPILER=$3
	fi
fi


if [ ${#} -eq 1 ] || [ ${#} -eq 3 ]; then
	echo "Compiling only ${1}"
	BINARY="${1}"
    	for ARCH in "${!targetToFlags[@]}"; do
        	compile_binary ${ARCH} ${BINARY} ia64   $COMPILER
    	done
	exit 0
fi

for BINARY in "${!binaryCompileOptions[@]}"; do
    for ARCH in "${!targetToFlags[@]}"; do
        compile_binary ${ARCH} ${BINARY} ia64   $COMPILER
    done
done
