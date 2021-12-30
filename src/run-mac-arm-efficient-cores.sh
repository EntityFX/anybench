#!/usr/bin/env bash
source common.sh

RESULT_DIR="../results/${current_arch}"
mkdir -p "${RESULT_DIR}"

BIN_DIR="../bin/${os_name}/${current_arch}"
for BINARY in $(ls ${BIN_DIR}/); do
    [[ ! -x "${BIN_DIR}/${BINARY}" ]] && continue ||:
    BINARY_BASE=$(cut -d_ -f 1 <<< ${BINARY})
    echo "Running ${BINARY_BASE} (${BINARY})"
    taskpolicy -c background "${BIN_DIR}/${BINARY}" "${binaryExtraArgs["${BINARY_BASE}"]}" &> "${RESULT_DIR}/${BINARY}.stdout_stderr.log" 
    cat "${RESULT_DIR}/${BINARY}.stdout_stderr.log" 
done
