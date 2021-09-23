#!/bin/bash

current_arch=$(uname -m)
current_uname=$(uname)
cpus_count=$(getconf _NPROCESSORS_ONLN)

# List of files to compile, with binary specific flags
declare -A binaryCompileOptions
binaryCompileOptions["gsynth"]="gsynth/gsynth.cpp -lm -lstdc++"

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

    echo -e "\033[0;32mCompiling ${BINARY} for ${ARCH} (${current_arch})\033[0m\n"
    FPUS="${targetToFPU[${ARCH}]}"
    MTUNES="${targetToFlags[${ARCH}]}"
    for FPU in "" ${FPUS}; do
        for MTUNE in "" ${MTUNES}; do
            EXTRA_CFLAGS="${MTUNE} ${FPU}"
            for OPT in ${optFlags}; do
                BINARY_NAME="${BINARY}_${SUFFIX}-${ARCH}${OPT//-/_}${FPU//-mfpu=/_}$(sed 's/^-m[a-z]\+=//' <<< ${MTUNE})"
				echo -e "\033[0;36mCompiling ${BINARY_NAME}\033[0m"
                declare -a BINARY_EXTRA_FLAGS
                ${CC} ${binaryCompileOptions[${BINARY}]} "${BINARY_EXTRA_FLAGS[@]}" -o ${output_dir}/${BINARY_NAME} ${OPT} ${EXTRA_CFLAGS} -D options="\"${current_arch} ${ARCH} optimized\""
                chmod +x ${output_dir}/${BINARY_NAME}
            done
        done
    done
    echo
}
