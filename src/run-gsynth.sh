#!/usr/bin/env bash
source common-gsynth.sh

RESULT_DIR="../results/${current_arch}"
mkdir -p "${RESULT_DIR}"

for BINARY in $(ls ../bin/${current_uname}/${current_arch}/ | grep "gsynth"); do
    echo "Running ${BINARY}"
    ../bin/${current_uname}/${current_arch}/${BINARY} n &> "${RESULT_DIR}/${BINARY}.stdout_stderr.log" 
done
