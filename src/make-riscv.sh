#!/bin/bash
# Include common functions and operations
source common.sh
targetToFlags["rv64g-opt"]="-mtune=sifive-u74 -mcpu=sifive-e34 -mcpu=sifive-e76 -mcpu=sifive-s54 -mcpu=sifive-s76 -mcpu=sifive-u54 -mcpu=sifive-u74 -mtune=sifive-5-series -mtune=sifive-7-series"
targetToFPUS["rv64g-opt"]="-ffast-math"
targetToExtraFlags["rv64g-opt"]="-march=rv64gc -mabi=lp64d -fno-common -funroll-loops -finline-functions -funroll-all-loops -falign-jumps=8 -falign-loops=8 -finline-limit=1000 -falign-functions=8 -fno-tree-loop-distribute-patterns --param fsm-scale-path-stmts=3 -mcmodel=medany"


targetToFlags["rv64g"]="-mtune=sifive-u74 -mcpu=sifive-e34 -mcpu=sifive-e76 -mcpu=sifive-s54 -mcpu=sifive-s76 -mcpu=sifive-u54 -mcpu=sifive-u74 -mtune=sifive-5-series -mtune=sifive-7-series"
targetToFPUS["rv64g"]="-ffast-math"
targetToExtraFlags["rv64g"]="-march=rv64gc"

COMPILER=""
BINARY=""
DO_NOT_REBUILD="false"
is_cc=0
while (( "${#}" )); do
	ARG="${1}"
	case ${ARG} in
		"--cc")
			is_cc=1
			;;
		"--no-rebuild")
			if [[ ${is_cc} == 1 ]]; then
				echo "You must specify compiler after '--cc' flag"
				exit 1
			fi
			DO_NOT_REBUILD="true"
			;;
		*)
			if [[ ${is_cc} -eq 1 ]]; then
				COMPILER="${ARG}"
				is_cc=0
			else
				BINARY="${ARG}"
			fi
			;;
	esac
	shift
done

# GCC and Clang doesn't support mcmodel=large on rv64
binaryCompileOptions["STREAM"]="benchmarks/generic/STREAM/stream.c -DSTREAM_ARRAY_SIZE=8000000 -DNTIMES=20 ${extraLinkerOptions}"

COMPILER=${COMPILER:-cc}

echo "Using Compiler '${COMPILER}'"

if [[ "${COMPILER}" =~ "clang" ]]; then
    targetToExtraFlags["rv64g-opt"]="-mabi=lp64d -fno-common -funroll-loops -finline-functions -falign-functions=8 --param fsm-scale-path-stmts=3 -mcmodel=medany"
fi

if [[ ! -z ${BINARY} ]]; then
	echo "Compiling only ${BINARY}"
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
