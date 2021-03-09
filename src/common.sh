#!/bin/bash
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

current_arch=$(uname -m)
if [[ ${current_arch} == "x86_64" ]]; then
    current_arch="amd64"
fi

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
    output_dir="../bin/linux/${current_arch}"
    if [[ ${CC} != "cc" ]]; then
	output_dir="${output_dir}_${CC}"
    fi
    mkdir -p ${output_dir}

    echo -e "Compiling ${BINARY} for ${ARCH} (${current_arch})\n"
    FPUS="${targetToFPU[${ARCH}]}"
    MTUNES="${targetToFlags[${ARCH}]}"
    for FPU in "" ${FPUS}; do
        for MTUNE in "" ${MTUNES}; do
            EXTRA_CFLAGS="${OPT} ${MTUNE} ${FPU}"
            for OPT in ${optFlags}; do
                BINARY_NAME="${BINARY}_${SUFFIX}-${ARCH}${OPT//-/_}${FPU//-mfpu=/_}$(sed 's/^-m[a-z]\+=//' <<< ${MTUNE})"
                ${CC} ${binaryCompileOptions[${BINARY}]} -o ${output_dir}/${BINARY_NAME} -march=${ARCH} ${EXTRA_CFLAGS} -D options="\"${current_arch} ${ARCH} optimized\""
                chmod +x ${output_dir}/${BINARY_NAME}
            done
        done
    done
    echo
}
