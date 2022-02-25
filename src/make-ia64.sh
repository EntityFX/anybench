#!/usr/bin/env bash
# Include common functions and operations
source common.sh
source common-make.sh

targetToFlags["ia64"]=""


if [[ ${#} -eq 1 ]]; then
    echo "Compiling only ${1}"
    BINARY="${1}"
    for ARCH in "${!targetToFlags[@]}"; do
        compile_binary ${ARCH} ${BINARY} ia64 ${COMPILER}
    done
    exit 0
fi

for BINARY in "${!binaryCompileOptions[@]}"; do
    for ARCH in "${!targetToFlags[@]}"; do
            compile_binary ${ARCH} ${BINARY} ia64 ${COMPILER}
    done
done
