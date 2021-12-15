#!/bin/bash

current_arch=$(uname -m)
current_uname=$(uname)
cpus_count=$(getconf _NPROCESSORS_ONLN)

if [[ ${BASH_VERSINFO[0]} -lt 5 ]]; then
	echo "WARNING! Using Bash older than 5.0 is not supported!!!!"
	echo "This script might fail to run"
	sleep 30
fi

# List of files to compile, with binary specific flags
declare -A binaryCompileOptions
extraLinkerOptions=""
coremarkPlatform="posix"
case ${current_uname} in
	Darwin)
		;;
	*)
		extraLinkerOptions="-lrt"
esac
binaryCompileOptions["dhrystone"]="dhry_1.c dhry_2.c cpuidc.c ${extraLinkerOptions}"
binaryCompileOptions["whetstone"]="whets.c cpuidc.c -lm ${extraLinkerOptions}"
binaryCompileOptions["memspeed"]="memspeed.c cpuidc.c -lm ${extraLinkerOptions}"
binaryCompileOptions["linpack"]="linpack.c cpuidc.c -lm ${extraLinkerOptions}"
binaryCompileOptions["lloops"]="lloops.c cpuidc.c -lm ${extraLinkerOptions}"
binaryCompileOptions["whetstonemp"]="mp/whetsmp.c mp/cpuidc64.c -pthread -lm ${extraLinkerOptions}"
binaryCompileOptions["mpmflops"]="mp/mpmflops.c mp/cpuidc64.c -pthread -lm ${extraLinkerOptions}"
binaryCompileOptions["busspeedil"]="busspeed.c cpuidc.c -lm ${extraLinkerOptions}"

coremarkCompileOptions="-Icoremark/${coremarkPlatform} -Icoremark -DPERFORMANCE_RUN=1 -DUSE_FORK=1  ${extraLinkerOptions} coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/${coremarkPlatform}/core_portme.c"

for cores in 1 2 4 8; do
	binaryCompileOptions["coremark_mp${cores}"]="-DMULTITHREAD=${cores} ${coremarkCompileOptions}"
done

if (( cpus_count > 8 )); then
	binaryCompileOptions["coremark_mp${cpus_count}"]="-DMULTITHREAD=${cpus_count} ${coremarkCompileOptions}"
fi

binaryCompileOptions["scimark2"]="-Iscimark2 scimark2/*.c -lm"

if [[ ${current_arch} == "x86_64" ]]; then
    current_arch="amd64"
fi

if [[ ${current_arch} == "i386" ]]; then
    current_arch="i386"
fi

os_name="${current_uname}"
if [[ ${current_uname} == "Darwin" ]]; then
	os_name="mac"
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
    output_dir="../bin/${os_name}/${current_arch}"
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
                if [[ ${BINARY_NAME} =~ ^coremark ]]; then
                    BINARY_EXTRA_FLAGS[0]="-DFLAGS_STR=\"${OPT} ${EXTRA_CFLAGS} -DPERFORMANCE_RUN=1 -DUSE_FORK=1 -lrt\""
                fi
                ${CC} ${binaryCompileOptions[${BINARY}]} "${BINARY_EXTRA_FLAGS[@]}" -o ${output_dir}/${BINARY_NAME} ${OPT} ${EXTRA_CFLAGS} -D options="\"${current_arch} ${ARCH} optimized\""
                chmod +x ${output_dir}/${BINARY_NAME}
            done
        done
    done
    echo
}
