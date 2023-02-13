#!/usr/bin/bash

current_arch=$(uname -m)
current_uname=$(uname)
cpus_count=$(/usr/bin/kstat -m cpu_info | grep 'module: cpu_info' | sort -u | wc -l | tr -d ' ')

if [[ ${current_arch} == "sun4u" ]]; then
  current_arch="sparc64"
fi

os_name="${current_uname}"
BIN_DIR="../bin/${os_name}/${current_arch}"

RESULT_DIR="../results/${current_arch}${SUFFIX}"
mkdir -p "${RESULT_DIR}"

BINARY_LIST="$(ls ${BIN_DIR}/)"
if [[ "${BINARY}" != "" ]]; then
	NEW_LIST=""
	for b in ${BINARY}; do
		NEW_LIST="${NEW_LIST} $(grep "${b}" <<< "${BINARY_LIST}")"
	done
	BINARY_LIST="${NEW_LIST}"
fi

echo
echo "Binaries to run: '${BINARY_LIST}'"
echo "Suffix: '${SUFFIX}'"
echo "Result directory: ${RESULT_DIR}"
echo


superPiArgs="$((1 << 22))"

for BINARY in ${BINARY_LIST}; do
    BASE_BINARY_NAME="$(cut -d_ -f 1 <<< ${BINARY})"
    
    [[ ! -x "${BIN_DIR}/${BINARY}" ]] && continue ||:
    echo "Running ${BIN_DIR}/${BINARY}"
    
    if  [[ $BASE_BINARY_NAME == SuperPI ]] || [[ $BASE_BINARY_NAME == SuperPI* ]] ; then
        "${BIN_DIR}/${BINARY}" "${superPiArgs}" &> "${RESULT_DIR}/${BINARY}.stdout_stderr.log" 
    else
        "${BIN_DIR}/${BINARY}" &> "${RESULT_DIR}/${BINARY}.stdout_stderr.log" 
    fi

    

done
