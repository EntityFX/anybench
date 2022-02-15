#!/usr/bin/env bash

source common.sh

SUFFIX=""
if [ $# -ne 0 ]; then
    SUFFIX="_${1}"
fi

RESULT_DIR="../results/${current_arch}${SUFFIX}"
mkdir -p "${RESULT_DIR}"

echo "Recording output of uname"
uname -mrsv > "${RESULT_DIR}/linux_uname.log"

if [[ -d /sys/devices/system/cpu/ ]]; then
    echo "Obtaining cpu information from /sys"
    for i in /sys/devices/system/cpu/cpu[0-9]*; do
        CPU=$(basename "${i}")
        if [[ -d "${i}/cache" ]]; then
            for idx in ${i}/cache/index*; do
                IDX_NAME=$(basename ${idx})
                LEVEL=$(cat "${idx}/level")
                TYPE=$(cat "${idx}/type")
                for parameter in ${idx}/*; do
                    p_base="$(basename ${parameter})"
                    if [[ "${p_base}" == "uevent" ]] || [[ "${p_base}" == "level" ]] || [[ "${p_base}" == "type" ]]; then
                        continue
                    fi
                    echo -n "${CPU}_L${LEVEL}${TYPE}_${p_base}=" >> "${RESULT_DIR}/linux_cpu_sys.log"
                    cat "${parameter}" >> "${RESULT_DIR}/linux_cpu_sys.log"
                done
            done
        fi
        if [[ -d "${i}/cpufreq" ]]; then
            for freq in cur_freq max_freq min_freq; do 
                echo -n "${CPU}_${freq}=" >> "${RESULT_DIR}/linux_cpu_sys.log"
                cat "${i}/cpufreq/scaling_${freq}" >> "${RESULT_DIR}/linux_cpu_sys.log"
            done
        fi
    done
fi

echo "Saving numactl information..."
numactl -H &>> "${RESULT_DIR}/linux_numactl.log"

echo "Getting information from current compiler"
cc --version >> "${RESULT_DIR}/linux_compiler.log"

# compile test code and do heruistics to detect cpu frequency
echo "Compiling code to detect CPU frequency..."
cc -ocpu_freq -std=gnu99 -Wall -Wextra -O2 utilities/cpu_freq.c -lpthread
echo "Running tool to attempt to detect real sustained frequency... This might take a while..."
echo "   It usually takes about 30s on 3 GHz CPU, if your CPU runs on lower frequency it might take more time to finish..."
echo "   It also might take longer time on Architectures which don't have ASM code to check. Currently only ARMv8, AMD64 and E2K use their own codepath."
echo
echo "To make results more accurate please don't touch your computer while tools are running"
CORES=${cpus_count}
rm -f "${RESULT_DIR}/linux_freq.log"
for i in $(seq 1 "${CORES}"); do
    echo "Running code to detect CPU frequency for ${i} cores"
    nice -19 ./cpu_freq "${i}" >> "${RESULT_DIR}/linux_freq.log"
    echo >> "${RESULT_DIR}/linux_freq.log"
done
echo "Saving cpuinfo and meminfo"
cat /proc/cpuinfo > "${RESULT_DIR}/linux_cpuinfo.log"
cat /proc/meminfo > "${RESULT_DIR}/linux_meminfo.log"

