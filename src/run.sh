#!/usr/bin/env bash
source common.sh

RESULT_DIR="../results/${current_arch}"
mkdir -p "${RESULT_DIR}"

BIN_DIR="../bin/${os_name}/${current_arch}"
for BINARY in $(ls ${BIN_DIR}/); do
    [[ ! -x "${BIN_DIR}/${BINARY}" ]] && continue ||:
    echo "Running ${BINARY}"
    "${BIN_DIR}/${BINARY}" &> "${RESULT_DIR}/${BINARY}.stdout_stderr.log" 
done
