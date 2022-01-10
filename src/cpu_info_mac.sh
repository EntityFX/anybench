#!/usr/bin/env bash

source common.sh
RESULT_DIR="../results/${current_arch}"
mkdir -p "${RESULT_DIR}"

echo "Recording output of uname"
uname -mrsv > "${RESULT_DIR}/osx_uname.log"

echo "Obtaining sysctl information (hw and machdep only)"
sysctl -a | grep -E '^(hw|machdep)' > "${RESULT_DIR}/osx_sysctl.log"

echo "Obtaining sw_vers"
sw_vers > "${RESULT_DIR}/osx_swvers.log"

echo "Getting system_profiler information (serial numbers should be redacted out)"

system_profiler SPHardwareDataType SPDisplaysDataType SPMemoryDataType | awk '
{
  if ($0 ~ "^$") {next}
  key=$1" "$2
  if (key ~ "Serial Number|Hardware UUID|Provisioning UDID") {next}
  print $0
}' > "${RESULT_DIR}/osx_hwinfo.log"

echo "Getting information from current compiler"
cc --version >> "${RESULT_DIR}/osx_compiler.log"

# compile test code and do heruistics to detect cpu frequency
echo "Compiling code to detect CPU frequency..."
cc -ocpu_freq -std=gnu99 -Wall -Wextra -O2 utilities/cpu_freq.c -lpthread
echo "Running tool to attempt to detect real sustained frequency... This might take a while..."
echo "To make results more accurate please don't touch your computer while tools are running"
if [[ ${current_arch} == "arm64" ]]; then
  EFFECTIVE_CORES=$(sysctl hw.perflevel1.physicalcpu | awk '{print $2}')
  PERFORMANCE_CORES=$(sysctl hw.perflevel0.physicalcpu | awk '{print $2}')
  rm -f "${RESULT_DIR}/osx_freq_effective_cores.log"
  for i in $(seq 1 "${EFFECTIVE_CORES}"); do
    echo "Running code to detect CPU for ${i} effective cores"
	  taskpolicy -b -t 0 -l 0 ./cpu_freq "${i}" >> "${RESULT_DIR}/osx_freq_effective_cores.log"
	  echo >> "${RESULT_DIR}/osx_freq_effective_cores.log"
  done
  rm -f "${RESULT_DIR}/osx_freq_performance_cores.log"
  for i in $(seq 1 "${PERFORMANCE_CORES}"); do
    echo "Running code to detect CPU for ${i} performance cores"
	  taskpolicy -t 0 -l 0 ./cpu_freq "${i}" >> "${RESULT_DIR}/osx_freq_performance_cores.log"
	  echo >> "${RESULT_DIR}/osx_freq_performance_cores.log"
  done
else
  CORES=$(sysctl hw.activecpu | awk '{print $2}')
  rm -f "${RESULT_DIR}/osx_freq.log"
  for i in $(seq 1 "${CORES}"); do
    echo "Running code to detect CPU frequency for ${i} cores"
	  taskpolicy -t 0 -l 0 ./cpu_freq "${i}" >> "${RESULT_DIR}/osx_freq.log"
	  echo >> "${RESULT_DIR}/osx_freq.log"
  done
fi
