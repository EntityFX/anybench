#!/bin/bash
# Include common functions and operations
source common.sh
source common-make.sh

targetToFlags["loongarch64"]=""
# At this moment, at least some toolchains do not use vector extentions with -march=native
# However -march=la464 should be ok
targetToExtraFlags["loongarch64"]="-march=la464 -mtune=la464"

if [[ ${#} -eq 1 ]]; then
    echo "Compiling only ${1}"
    BINARY="${1}"
    for ARCH in "${!targetToFlags[@]}"; do
        compile_binary ${ARCH} ${BINARY} loongarch64 ${COMPILER}
    done
    exit 0
fi

for BINARY in "${!binaryCompileOptions[@]}"; do
    for ARCH in "${!targetToFlags[@]}"; do
            compile_binary ${ARCH} ${BINARY} loongarch64 ${COMPILER}
    done
done
