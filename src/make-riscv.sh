#!/bin/bash
# Include common functions and operations
source common.sh
source common-make.sh

# Extra optimization flags
targetToFlags["rv64g-opt"]="-mtune=sifive-u74 -mcpu=sifive-e34 -mcpu=sifive-e76 -mcpu=sifive-s54 -mcpu=sifive-s76 -mcpu=sifive-u54 -mcpu=sifive-u74 -mtune=sifive-5-series -mtune=sifive-7-series"
targetToFPUS["rv64g-opt"]="-ffast-math"
targetToExtraFlags["rv64g-opt"]="-march=rv64gc -mabi=lp64d -fno-common -funroll-loops -finline-functions -funroll-all-loops -falign-jumps=8 -falign-loops=8 -finline-limit=1000 -falign-functions=8 -fno-tree-loop-distribute-patterns --param fsm-scale-path-stmts=3 -mcmodel=medany"

targetToFlags["rv64g"]="-mtune=sifive-u74 -mcpu=sifive-e34 -mcpu=sifive-e76 -mcpu=sifive-s54 -mcpu=sifive-s76 -mcpu=sifive-u54 -mcpu=sifive-u74 -mtune=sifive-5-series -mtune=sifive-7-series"
targetToFPUS["rv64g"]="-ffast-math"
targetToExtraFlags["rv64g"]="-march=rv64gc"

# GCC and Clang doesn't support mcmodel=large on rv64, as well as there are devices that have only 512 MB of RAM
binaryCompileOptions["STREAM"]="benchmarks/generic/STREAM/stream.c -DSTREAM_ARRAY_SIZE=8000000 -DNTIMES=20 ${extraLinkerOptions}"

# current versions of clang (clang-13 and 14) doesn't support most of the extra flags gcc have
if [[ "${COMPILER}" =~ "clang" ]]; then
    targetToExtraFlags["rv64g-opt"]="-mabi=lp64d -fno-common -funroll-loops -finline-functions -falign-functions=8 --param fsm-scale-path-stmts=3 -mcmodel=medany"
fi

if [[ ${#} -eq 1 ]]; then
    echo "Compiling only ${1}"
    BINARY="${1}"
    for ARCH in "${!targetToFlags[@]}"; do
        compile_binary ${ARCH} ${BINARY} rv64 ${COMPILER}
    done
    exit 0
fi

for BINARY in "${!binaryCompileOptions[@]}"; do
    for ARCH in "${!targetToFlags[@]}"; do
            compile_binary ${ARCH} ${BINARY} rv64 ${COMPILER}
    done
done
