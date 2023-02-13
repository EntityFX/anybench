#!/usr/bin/env bash
# Include common functions and operations
source common.sh
source common-make.sh

# aarch64
targetToFlags["native"]=""
targetToExtraFlags["native"]="-mtune=native"

targetToFlags["armv8.4-a"]="-march=armv8.4-a"
targetToExtraFlags["armv8.4-a"]=""

# GCC doesn't know (as of 12.2) about apple-m1, v1 or n1 are a bit closer and produce genreally a bit better results than native and amrv8.4
#targetToFlags["neoverse-v1"]=""
#targetToExtraFlags["neoverse-v1"]="-mtune=neoverse-v1"

#targetToFlags["neoverse-n1"]=""
#targetToExtraFlags["neoverse-n1"]="-mtune=neoverse-n1"

# for all recent clangs if you have Apple M1/M2 - you should use -mtune=apple-m1 for best results, at least as of 2023-01
targetToFlags["apple-m1"]=""
targetToExtraFlags["apple-m1"]="-mtune=apple-m1"

#targetToFlags["apple-latest"]=""
#targetToExtraFlags["apple-latest"]="-mtune=apple-latest"

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
