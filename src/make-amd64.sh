#!/usr/bin/env bash
# Include common functions and operations
source common.sh
source common-make.sh
arch=amd64

targetToFlags["x86-64"]="-march=native"
#targetToFlags["zen4"]=""
# gcc doesn't know that zen4 supports avx512, so force-enabling it in addition to march=native
#targetToExtraFlags["zen4"]="-march=native -mavx512f -mavx512bw -mavx512cd -mavx512dq -mavx512ifma -mavx512vbmi"

if [[ ${#} -eq 1 ]]; then
    echo "Compiling only ${1}"
    BINARY="${1}"
    for ARCH in "${!targetToFlags[@]}"; do
        compile_binary ${ARCH} ${BINARY} amd64 ${COMPILER}
    done
    exit 0
fi

for BINARY in "${!binaryCompileOptions[@]}"; do
    for ARCH in "${!targetToFlags[@]}"; do
        compile_binary ${ARCH} ${BINARY} amd64 ${COMPILER}
    done
done
