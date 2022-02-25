#!/bin/bash
# Include common functions and operations
source common.sh
source common-make.sh
optFlags="-O2 -O3 -O4 -Ofast"

targetToFlags["elbrus-v2"]=""
targetToFlags["elbrus-v3"]=""
targetToFlags["elbrus-v4"]="-mtune=elbrus-8c -mtune=elbrus-1c+"
targetToFlags["elbrus-v5"]="-mtune=elbrus-8c2"
targetToFlags["elbrus-v6"]="-mtune=elbrus-2c3 -mtune=elbrus-12c -mtune=elbrus-16c"

targetToFPU["elbrus-v2"]=""
targetToFPU["elbrus-v3"]="-ffast -fwhole"
targetToFPU["elbrus-v4"]="-ffast -fwhole"
targetToFPU["elbrus-v5"]="-ffast -fwhole"
targetToFPU["elbrus-v6"]="-ffast -fwhole"

if [[ ${#} -eq 1 ]]; then
    echo "Compiling only ${1}"
    BINARY="${1}"
    for ARCH in "${!targetToFlags[@]}"; do
        compile_binary ${ARCH} ${BINARY} e2k ${COMPILER}
    done
    exit 0
fi

for BINARY in "${!binaryCompileOptions[@]}"; do
    for ARCH in "${!targetToFlags[@]}"; do
            compile_binary ${ARCH} ${BINARY} e2k ${COMPILER}
    done
done
