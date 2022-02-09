#!/usr/bin/env bash
source common.sh

RESULT_DIR="../results/${current_arch}"
mkdir -p "${RESULT_DIR}"

if [[ ${SKIP_CPU_INFO,,} != "true" ]]; then
    if [[ ${os_name} == "mac" ]]; then
        echo "Will gather system information"
        ./cpu_info_mac.sh
    fi

    if [[ ${os_name} == "Linux" ]]; then
        echo "Will gather system information"
        ./cpu_info_linux.sh
    fi
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
    if [[ ${BASE_BINARY_NAME} == "STREAM" ]]; then
        echo "STREAM have support for modifing amount of threads... Running multiple instances"
        threads=1
        while [[ ${threads} -le ${cpus_count} ]]; do
            echo "Running for ${threads}/${cpus_count} threads..."
            export OMP_NUM_THREADS="${threads}"
            "${BIN_DIR}/${BINARY}" ${binaryExtraArgs[${BASE_BINARY_NAME}]} &> "${RESULT_DIR}/${BINARY}_mp${threads}.stdout_stderr.log" 
            if [[ ${threads} -eq ${cpus_count} ]]; then
                break
            fi
            if [[ ${threads} < 4 ]]; then
                threads=$((threads+1))
            else
                threads=$((threads*2))
            fi
            if [[ ${threads} -gt ${cpus_count} ]]; then
                threads=${cpus_count}
            fi
        done
        unset OMP_NUM_THREADS
    else
        "${BIN_DIR}/${BINARY}" ${binaryExtraArgs[${BASE_BINARY_NAME}]} &> "${RESULT_DIR}/${BINARY}.stdout_stderr.log" 
    fi
done
