#!/bin/bash
# Include common functions and operations
source common.sh
source common-make.sh

# arm 32bit case
if [[ ${current_arch} != "aarch64" ]]; then
    targetToFlags["armv6"]=""
    targetToFlags["armv7"]=""
    targetToFlags["armv7-a"]="-mtune=cortex-a7 -mtune=cortex-a9 -mtune=cortex-a15"
    targetToFlags["armv8-a"]="-mtune=cortex-a53 -mtune=cortex-a57"
    targetToFlags["armv8-a+crc"]="-mtune=cortex-a72"
    targetToFlags["armv8.1-a"]=""
    
    targetToFPU["armv6"]=""
    targetToFPU["armv7"]=""
    targetToFPU["armv7-a"]="-mfpu=neon"
    targetToFPU["armv8-a"]="-mfpu=neon"
    targetToFPU["armv8-a+crc"]="-mfpu=neon"
    targetToFPU["armv8.1-a"]="-mfpu=neon"
else
    # aarch64
    #targetToFlags["armv8-a"]="-mtune=cortex-a53 -mtune=cortex-a57"
    #targetToFlags["armv8-a+crc"]="-mtune=cortex-a72" # e.x. raspberry pi4
    #targetToFlags["armv8.1-a"]="-march=armv8.1-a"

    # this is GCC-only options
    #targetToFlags["cortexa76-a55"]=""
    #targetToExtraFlags["cortexa76-a55"]="-mtune=cortex-a76.cortex-a55"

    targetToFlags["native"]=""
    targetToExtraFlags["native"]="-mtune=native"
    targetToFlags["cortexa76"]=""
    targetToExtraFlags["cortexa76"]="-mtune=cortex-a76"
    
    # at this moment arm64 don't need any extra flags to use FPU
    targetToFPU["armv8-a"]=""
    targetToFPU["armv8-a+crc"]=""
    targetToFPU["armv8.1-a"]=""
fi

binaryCompileOptions["STREAM"]="benchmarks/generic/STREAM/stream.c -fopenmp -DSTREAM_ARRAY_SIZE=80000000 -DNTIMES=20 ${extraLinkerOptions}"

if [[ ${#} -eq 1 ]]; then
    echo "Compiling only ${1}"
    BINARY="${1}"
    for ARCH in "${!targetToFlags[@]}"; do
        compile_binary ${ARCH} ${BINARY} arm ${COMPILER}
    done
    exit 0
fi

for BINARY in "${!binaryCompileOptions[@]}"; do
    for ARCH in "${!targetToFlags[@]}"; do
            compile_binary ${ARCH} ${BINARY} arm ${COMPILER}
    done
done
