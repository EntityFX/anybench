#!/usr/bin/env bash
NAME="${1}"
if [[ ! -d ${NAME} ]]; then
 echo "Not a directory: ${NAME}"
 exit 1
fi
EXTRA_FILTER="${2:-.*}"

COREMARK_FILES="$(ls "${NAME}"/coremark* | grep -v '_mp[0-9]\+_' | grep "${EXTRA_FILTER}") $(ls "${NAME}"/coremark* | grep '_mp1_' | grep "${EXTRA_FILTER}")"
COREMARK_MP_FILES="$(ls "${NAME}"/coremark* | grep '_mp[0-9]\+_' | grep "${EXTRA_FILTER}")"
DHRYSTONE_FILES="$(ls "${NAME}"/dhrystone* | grep "${EXTRA_FILTER}")"
LINPACK_FILES="$(ls "${NAME}"/linpack* | grep "${EXTRA_FILTER}")"
SCIMARK2_FILES="$(ls "${NAME}"/scimark* | grep "${EXTRA_FILTER}")"
WHETSTONE_FILES="$(ls "${NAME}"/whetstone_* | grep -v '_mp_' | grep "${EXTRA_FILTER}")"
WHETSTONE_MP_FILES="$(ls "${NAME}"/whetstone_mp_* "${NAME}"/whetstonemp_* 2>/dev/null | grep "${EXTRA_FILTER}")"
MPMFLOPS_FILES="$(ls "${NAME}"/mpmflops_* 2>/dev/null | grep "${EXTRA_FILTER}")"

COREMARK=$(awk '($1 == "CoreMark" && $2 == "1.0"){if ($4 > v) { v=$4; }}END{print v}' ${COREMARK_FILES})
COREMARK_MP=$(awk '($1 == "CoreMark" && $2 == "1.0"){if ($4 > v) { v=$4; }}END{print v}' ${COREMARK_MP_FILES})
DHRYSTONE=$(awk '($1 == "VAX" && $2 == "MIPS"){if ($5 > v) { v=$5; }}END{print v}' ${DHRYSTONE_FILES})
LINPACK=$(awk '($1 == "Unrolled" && $2 == "Double" && $3 == "Precision" && $4 != "Linpack"){if ($4 > v) { v=$4; }}END{print v}' ${LINPACK_FILES})
SCIMARK2=$(awk '($1 == "Composite" && $2 == "Score:" && $3 != "inf" && $3 < 4000000){if ($3 > v) { v=$3; }}END{print v}' ${SCIMARK2_FILES})
WHETSTONE=$(awk '($1 == "MWIPS"){if ($2 > v) { v=$2; }}END{print v}' ${WHETSTONE_FILES})
WHETSTONE_MP=$(awk '($1 == "Total"){if ($2 > v) { v=$2; }}END{print v}' ${WHETSTONE_MP_FILES})
WHETSTONE_MP_PESSIMISTIC=$(awk '($1 == "MWIPS" && $3 == "Based" ){if ($2 > v) { v=$2; }}END{print v}' ${WHETSTONE_MP_FILES})
MPMFLOPS=$(awk '($1 == "Data" && $2 == "in" && $3 == "&" && $4 == "out"){if ($9 > v) { v=$9; }}END{print v}' ${MPMFLOPS_FILES})

echo -e "\"${NAME}\": {\n\t\"Coremark\": ${COREMARK:--1},\n\t\"CoremarkMP\": ${COREMARK_MP},\n\t\"Dhrystone\": ${DHRYSTONE},\n\t\"Linpack\": ${LINPACK},\n\t\"Scimark2\": ${SCIMARK2},\n\t\"Whetstone\": ${WHETSTONE},\n\t\"MP MFLOPS\": ${MPMFLOPS},\n\t\"WhetstoneMP\": ${WHETSTONE_MP},\n\t\"WhetstoneMP Pessimistic\": ${WHETSTONE_MP_PESSIMISTIC},\n}"
