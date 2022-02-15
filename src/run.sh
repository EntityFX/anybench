#!/usr/bin/env bash
source common.sh

SUFFIX=""

# pass "--suffix SUFFIX" to set SUFFIX, must be at the end.
if [ $# -eq 2 ]; then
	if [ $1 == "--suffix" ]; then
		SUFFIX=$2
	fi
fi

if [ $# -eq 3 ]; then
	if [ $2 == "--suffix" ]; then
		SUFFIX=$3
	fi
fi

RESULT_DIR="../results/${current_arch}"
mkdir -p "${RESULT_DIR}"

if [[ ${os_name} == "mac" ]]; then
    echo "Will gather system information"
    ./cpu_info_mac.sh
fi

if [[ ${os_name} == "Linux" ]]; then
    echo "Will gather system information"
    ./cpu_info_linux.sh $SUFFIX
fi

BIN_DIR="../bin/${os_name}/${current_arch}${SUFFIX}"
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
