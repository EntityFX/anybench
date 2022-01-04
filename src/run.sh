#!/usr/bin/env bash
source common.sh

RESULT_DIR="../results/${current_arch}"
mkdir -p "${RESULT_DIR}"

if [[ ${os_name} == "mac" ]]; then
    echo "Will gather system information"
    ./cpu_info_mac.sh
fi

if [[ ${os_name} == "Linux" ]]; then
    echo "Will gather system information"
    ./cpu_info_linux.sh
fi

BIN_DIR="../bin/${os_name}/${current_arch}"
BINARY_LIST="$(ls ${BIN_DIR}/)"
if [[ "${#@}" -eq 1 ]]; then
	BINARY=${1}
	BINARY_LIST="$(ls ${BIN_DIR}/ | grep ${BINARY})"
fi
for BINARY in ${BINARY_LIST}; do
    [[ ! -x "${BIN_DIR}/${BINARY}" ]] && continue ||:
    echo "Running ${BINARY}"
    BASE_BINARY_NAME="$(cut -d_ -f 1 <<< ${BINARY})"
    "${BIN_DIR}/${BINARY}" ${binaryExtraArgs[${BASE_BINARY_NAME}]} &> "${RESULT_DIR}/${BINARY}.stdout_stderr.log" 
done
