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
CPUID_FLAGS="benchmarks/common/cpuidc64.c -Ibenchmarks/common/"
binaryCompileOptions["dhrystone"]="benchmarks/generic/dhrystone/dhry_1.c benchmarks/generic/dhrystone/dhry_2.c ${CPUID_FLAGS} ${extraLinkerOptions}"
binaryCompileOptions["whetstone"]="benchmarks/generic/whetstone/whets.c ${CPUID_FLAGS} -lm ${extraLinkerOptions}"
binaryCompileOptions["memspeed"]="benchmarks/generic/memspeed/memspeed.c ${CPUID_FLAGS} -lm ${extraLinkerOptions}"
binaryCompileOptions["linpack"]="benchmarks/generic/linpack/linpack.c ${CPUID_FLAGS} -lm ${extraLinkerOptions}"
binaryCompileOptions["lloops"]="benchmarks/generic/lloops/lloops.c ${CPUID_FLAGS} -lm ${extraLinkerOptions}"
binaryCompileOptions["whetstonemp"]="benchmarks/generic/whetstonemp/whetsmp.c ${CPUID_FLAGS} -pthread -lm ${extraLinkerOptions}"
binaryCompileOptions["mpmflops"]="benchmarks/generic/mpmflops/mpmflops.c ${CPUID_FLAGS} -pthread -lm ${extraLinkerOptions}"
binaryCompileOptions["busspeedil"]="benchmarks/generic/busspeedil/busspeed.c ${CPUID_FLAGS} -lm ${extraLinkerOptions}"
binaryCompileOptions["gsynth"]="benchmarks/generic/gsynth/gsynth.cpp -std=c++11 -lm -lstdc++"
binaryCompileOptions["STREAM"]="benchmarks/generic/STREAM/stream.c -fopenmp -DSTREAM_ARRAY_SIZE=20000000 -DNTIMES=20 ${extraLinkerOptions}"
binaryCompileOptions["SuperPI"]="benchmarks/generic/SuperPI/pi_fftcs.c benchmarks/generic/SuperPI/fftsg_h.c -lm ${extraLinkerOptions}"

coremarkCompileOptions="-Ibenchmarks/generic/coremark/${coremarkPlatform} -Ibenchmarks/generic/coremark -DPERFORMANCE_RUN=1 -DUSE_FORK=1  ${extraLinkerOptions} benchmarks/generic/coremark/core_list_join.c benchmarks/generic/coremark/core_main.c benchmarks/generic/coremark/core_matrix.c benchmarks/generic/coremark/core_state.c benchmarks/generic/coremark/core_util.c benchmarks/generic/coremark/${coremarkPlatform}/core_portme.c"

for cores in 1 2 4 8; do
	binaryCompileOptions["coremark_mp${cores}"]="-DMULTITHREAD=${cores} ${coremarkCompileOptions}"
done

if (( cpus_count > 8 )); then
	binaryCompileOptions["coremark_mp${cpus_count}"]="-DMULTITHREAD=${cpus_count} ${coremarkCompileOptions}"
fi

binaryCompileOptions["scimark2"]="-Ibenchmarks/generic/scimark2 benchmarks/generic/scimark2/*.c -lm"

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

echo "Arch: ${current_arch}"
echo "Uname: ${current_uname}"
echo -e "Cpu cores: ${cpus_count}\n"

optFlags="-O2 -O3 -Ofast"

# Those variables must be filled in architecture-dependant scripts
# compile_binary function will iterate over all variants of flags specified by targetToFlags
declare -A targetToFlags
declare -A targetToFPU
declare -A binaryExtraArgs

binaryExtraArgs["SuperPI"]="$((1<<22))"

if [[ ${#} -eq 1 ]]; then
	if [[ ${1} == "list" ]] || [[ ${1} == "ls" ]]; then
		echo "Available benchmarks: ${!binaryCompileOptions[@]}"
		exit 0;
	fi
fi



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
                case "${BINARY_NAME}" in
                    STREAM*)
                        if [[ -z ${OPENMP_CC} ]]; then
                            echo "WARNING!!!! building STREAM benchmark might fail unless OPENMP_CC environment variable"
                            echo "points to openmp compatible compiler. In most Linux distros that should be ok to use default"
                            echo "compiler, howerever on MacOS clang must be installed from somewhere else, e.x. brew nix or "
                            echo "other package manager. Please note you must also provide OPENMP_LINK variable that would "
                            echo "point to library dir where openmp libs are on OSX it should point to where libomp is "
                            echo "installed, e.x. /opt/homebrew/Cellar/libomp/13.0.0"
                            echo
                            echo "Example:"
                            echo 'export OPENMP_CC="/opt/homebrew/Cellar/llvm/13.0.0_2/bin/clang"'
                            echo 'export OPENMP_LINK="-L/opt/homebrew/Cellar/libomp/13.0.0/lib"'
                            sleep 10
                            echo "Will try to compile using ${CC} anyway..."
                            OPENMP_CC="${CC}"
                        fi
                        ${OPENMP_CC} ${OPENMP_LINK} ${platformSpecificCompileOptions[${BINARY}]} -Ibenchmarks/common ${binaryCompileOptions[${BINARY}]} "${BINARY_EXTRA_FLAGS[@]}" -o ${output_dir}/${BINARY_NAME} ${OPT} ${EXTRA_CFLAGS} -D options="\"${current_arch} ${ARCH} optimized\"" || continue
                        ;;
                    gsynth*)
                        "${CC}" ${binaryCompileOptions[${BINARY}]} "${BINARY_EXTRA_FLAGS[@]}" -o "${output_dir}/${BINARY_NAME}" ${OPT} ${EXTRA_CFLAGS}
                        ;;
                    *)
                        "${CC}" ${binaryCompileOptions[${BINARY}]} "${BINARY_EXTRA_FLAGS[@]}" -o "${output_dir}/${BINARY_NAME}" ${OPT} ${EXTRA_CFLAGS} -D options="\"${current_arch} ${ARCH} optimized\""
                        ;;
                esac
                chmod +x ${output_dir}/${BINARY_NAME}
            done
        done
    done
    echo
}
