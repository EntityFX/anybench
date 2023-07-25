#!/usr/bin/env bash
# Include common functions and operations
source common.sh
source common-make.sh
optFlags="-O2 -O3 -Ofast"

targetToFlags["s390x"]="-march=native"
targetToFlags["s390x-z15"]="-march=z15"

if [[ ${#} -eq 1 ]]; then
    echo "Compiling only ${1}"
    BINARY="${1}"
    for ARCH in "${!targetToFlags[@]}"; do
        compile_binary ${ARCH} ${BINARY} s390x ${COMPILER}
    done
    exit 0
fi

for BINARY in "${!binaryCompileOptions[@]}"; do
    for ARCH in "${!targetToFlags[@]}"; do
        compile_binary ${ARCH} ${BINARY} s390x ${COMPILER}
    done
done
