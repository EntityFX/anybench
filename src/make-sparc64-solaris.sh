#!/usr/bin/bash

COMPILER=${COMPILER:-cc}

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
        "--help")
            help
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

echo "Using Compiler '${COMPILER}'"

current_arch=$(uname -m)
current_uname=$(uname)
cpus_count=$(/usr/bin/kstat -m cpu_info | grep 'module: cpu_info' | sort -u | wc -l | tr -d ' ')

if [[ ${current_arch} == "sun4u" ]]; then
  current_arch="sparc64"
fi

extraLinkerOptions="-lposix4"
coremarkPlatform="posix"
CPUID_FLAGS="benchmarks/common/cpuidc64.c -Ibenchmarks/common/"

BENCHMARKS=(    "dhrystone:benchmarks/generic/dhrystone/dhry_1.c benchmarks/generic/dhrystone/dhry_2.c ${CPUID_FLAGS} ${extraLinkerOptions}"
                "whetstone:benchmarks/generic/whetstone/whets.c ${CPUID_FLAGS} -lm ${extraLinkerOptions}"
                "linpack:benchmarks/generic/linpack/linpack.c ${CPUID_FLAGS} -lm ${extraLinkerOptions}"
                "memspeed:benchmarks/generic/memspeed/memspeed.c ${CPUID_FLAGS} -lm ${extraLinkerOptions}"
                "lloops:benchmarks/generic/lloops/lloops.c ${CPUID_FLAGS} -lm ${extraLinkerOptions}"
                "whetstonemp:benchmarks/generic/whetstonemp/whetsmp.c ${CPUID_FLAGS} -pthread -lm ${extraLinkerOptions}"
                "mpmflops:benchmarks/generic/mpmflops/mpmflops.c ${CPUID_FLAGS} -pthread -lm ${extraLinkerOptions}"
                "coremark:-Ibenchmarks/generic/coremark/${coremarkPlatform} -Ibenchmarks/generic/coremark -DPERFORMANCE_RUN=1 -DUSE_FORK=1  ${extraLinkerOptions} benchmarks/generic/coremark/core_list_join.c benchmarks/generic/coremark/core_main.c benchmarks/generic/coremark/core_matrix.c benchmarks/generic/coremark/core_state.c benchmarks/generic/coremark/core_util.c benchmarks/generic/coremark/${coremarkPlatform}/core_portme.c" 
                "STREAM:benchmarks/generic/STREAM/stream.c -fopenmp -mcmodel=large -DSTREAM_ARRAY_SIZE=80000000 -DNTIMES=20 ${extraLinkerOptions}" 
                "SuperPI:benchmarks/generic/SuperPI/pi_fftcs.c benchmarks/generic/SuperPI/fftsg_h.c -lm ${extraLinkerOptions}" 
                "scimark2:-Ibenchmarks/generic/scimark2 benchmarks/generic/scimark2/*.c -lm" )

MCPU=(
        ":"
        "native:-mcpu=native"
        "ultrasparc3:-mcpu=ultrasparc3" )
        
cores=1
os_name="${current_uname}"
output_dir="../bin/${os_name}/${current_arch}"

mkdir -p "${output_dir}"

echo "Arch: ${current_arch}"
echo "Uname: ${current_uname}"
echo -e "Cpu cores: ${cpus_count}\n"
echo "Output dir: ${output_dir}"

declare -a optFlags=(-O2 -O3 -Ofast)

for bench in "${BENCHMARKS[@]}"; do
    binaryKey=${bench%%:*}
    binaryCompileOptions=${bench#*:}

    for opt in "${optFlags[@]}"; do
        optFlag=${opt#*:}
           
        for mcpu in "${MCPU[@]}"; do
            mcpuKey=${mcpu%%:*}
            mcpuValue=${mcpu#*:}
            
            BINARY_NAME="${binaryKey}-${current_arch}${optFlag}-${mcpuKey}"
        
            echo -e "\033[0;32mCompiling ${BINARY_NAME} for ${current_arch}\033[0m\n"
            
            "${COMPILER}" ${binaryCompileOptions} -o "${output_dir}/${BINARY_NAME}" ${optFlag} ${mcpuValue} -D FLAGS_STR="\"${optFlag}\"" -D options="\"${current_arch} optimized\""
        done
    done
done
