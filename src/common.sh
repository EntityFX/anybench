#!/bin/bash

current_arch=$(uname -m)
current_uname=$(uname)
cpus_count=$(getconf _NPROCESSORS_ONLN)

# List of files to compile, with binary specific flags
declare -A binaryCompileOptions
binaryCompileOptions["drystone"]="dhry_1.c dhry_2.c cpuidc.c"
binaryCompileOptions["whetstone"]="whets.c cpuidc.c -lm -lrt"
binaryCompileOptions["memspeed"]="memspeed.c cpuidc.c -lm -lrt"
binaryCompileOptions["linpack"]="linpack.c cpuidc.c -lm -lrt"
binaryCompileOptions["lloops"]="lloops.c cpuidc.c -lm -lrt"
binaryCompileOptions["whetstonemp"]="mp/whetsmp.c mp/cpuidc64.c -pthread -lm -lrt "
binaryCompileOptions["mpmflops"]="mp/mpmflops.c mp/cpuidc64.c -pthread -lm -lrt"
binaryCompileOptions["busspeedil"]="busspeed.c cpuidc.c -lm -lrt"
binaryCompileOptions["coremark_mp1"]="-Icoremark/linux64 -Icoremark -DPERFORMANCE_RUN=1 -DMULTITHREAD=1 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c"
binaryCompileOptions["coremark_mp2"]="-Icoremark/linux64 -Icoremark -DPERFORMANCE_RUN=1 -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c"
binaryCompileOptions["coremark_mp4"]="-Icoremark/linux64 -Icoremark -DPERFORMANCE_RUN=1 -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c"
binaryCompileOptions["coremark_mp8"]="-Icoremark/linux64 -Icoremark -DPERFORMANCE_RUN=1 -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c"

if (( cpus_count > 8 )); then
	binaryCompileOptions["coremark_mp${cpus_count}"]="-Icoremark/linux64 -Icoremark -DPERFORMANCE_RUN=1 -DMULTITHREAD=${cpus_count} -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c"
fi

binaryCompileOptions["scimark2"]="-Iscimark2 scimark2/*.c -lm"

current_arch=$(uname -m)
current_uname=$(uname)

if [[ ${current_arch} == "x86_64" ]]; then
    current_arch="amd64"
fi

if [[ ${current_arch} == "i386" ]]; then
    current_arch="i386"
fi

echo -e "Arch: ${current_arch}\n"
echo -e "Uname: ${current_uname}\n"
echo -e "Cpu cores: ${cpus_count}\n"

optFlags="-O2 -O3 -Ofast"

# Those variables must be filled in architecture-dependant scripts
# compile_binary function will iterate over all variants of flags specified by targetToFlags
declare -A targetToFlags
declare -A targetToFPU

compile_binary() {
    ARCH=${1}
    BINARY=${2}
    SUFFIX=${3}
    CC=${4:-cc}

    # Special case to preserve the name of original dir name for amd64
    output_dir="../bin/${current_uname}/${current_arch}"
    if [[ ${CC} != "cc" ]]; then
	output_dir="${output_dir}_${CC}"
    fi
    mkdir -p ${output_dir}

    echo -e "Compiling ${BINARY} for ${ARCH} (${current_arch})\n"
    FPUS="${targetToFPU[${ARCH}]}"
    MTUNES="${targetToFlags[${ARCH}]}"
    for FPU in "" ${FPUS}; do
        for MTUNE in "" ${MTUNES}; do
            EXTRA_CFLAGS="${MTUNE} ${FPU}"
            for OPT in ${optFlags}; do
                BINARY_NAME="${BINARY}_${SUFFIX}-${ARCH}${OPT//-/_}${FPU//-mfpu=/_}$(sed 's/^-m[a-z]\+=//' <<< ${MTUNE})"
                declare -a BINARY_EXTRA_FLAGS
                if [[ ${BINARY_NAME} =~ ^coremark ]]; then
                    BINARY_EXTRA_FLAGS[0]="-DFLAGS_STR=\"${OPT} ${EXTRA_CFLAGS} -DPERFORMANCE_RUN=1 -DUSE_FORK=1 -lrt\""
                fi
                ${CC} ${binaryCompileOptions[${BINARY}]} "${BINARY_EXTRA_FLAGS[@]}" -o ${output_dir}/${BINARY_NAME} -march=${ARCH} ${OPT} ${EXTRA_CFLAGS} -D options="\"${current_arch} ${ARCH} optimized\""
                chmod +x ${output_dir}/${BINARY_NAME}
            done
        done
    done
    echo
}
