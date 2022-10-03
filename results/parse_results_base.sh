#!/usr/bin/env bash
function parse_results() {
	local -n results=${1}
	NAME="${2}"
	if [[ ! -d ${NAME} ]]; then
	 echo "Not a directory: ${NAME}"
	 exit 1
	fi
	EXTRA_FILTER="${3:-.*}"

	FREQUENCY_FILES="$(ls "${NAME}"/*freq.log 2>&1)"
	FREQ_OUTPUT=$(awk 'BEGIN{FS="="}($1 ~ /^estimated_frequency_hz_cpu/){if (!($1 in freqs)) {freqs[$1] = int($2);} else {freq=freqs[$1]; new_freq=int($2); if (new_freq > freq) { freqs[$1] = int($2); } } }END{for (key in freqs) { print "max_"key"_mhz="freqs[key]/1e6}}' "${NAME}"/*freq* 2>/dev/null | sort);
	for freq in ${FREQ_OUTPUT}; do
		local name=$(cut -d= -f 1 <<< ${freq})
		local value=$(cut -d= -f 2 <<< ${freq})
		results["${name}"]=${value}
	done

	
	COREMARK_FILES="$(ls "${NAME}"/coremark*.log 2>&1 | grep -v '_mp[0-9]\+_' | grep "${EXTRA_FILTER}") $(ls "${NAME}"/coremark* 2>&1 | grep '_mp1_' | grep "${EXTRA_FILTER}")"
	COREMARK_MP_FILES="$(ls "${NAME}"/coremark*.log 2>&1 | grep '_mp[0-9]\+_' | grep "${EXTRA_FILTER}")"
	DHRYSTONE_FILES="$(ls "${NAME}"/dhrystone*.log 2>&1 | grep "${EXTRA_FILTER}")"
	LINPACK_FILES="$(ls "${NAME}"/linpack*.log 2>&1 | grep "${EXTRA_FILTER}")"
	SCIMARK2_FILES="$(ls "${NAME}"/scimark*.log 2>&1 | grep "${EXTRA_FILTER}")"
	WHETSTONE_FILES="$(ls "${NAME}"/whetstone_*.log 2>&1 | grep -v '_mp_' | grep "${EXTRA_FILTER}")"
	WHETSTONE_MP_FILES="$(ls "${NAME}"/whetstone*mp_*.log 2>&1 | grep "${EXTRA_FILTER}")"
	MPMFLOPS_FILES="$(ls "${NAME}"/mpmflops_*.log 2>&1 | grep "${EXTRA_FILTER}")"
	
	results["coremark"]=$(awk '($1 == "CoreMark" && $2 == "1.0"){if ($4+0.0 > v) { v=$4+0.0; }}END{print int(v)}' ${COREMARK_FILES:-"None"} 2>/dev/null)
	results["coremark_mp"]=$(awk '($1 == "CoreMark" && $2 == "1.0"){if ($4+0.0 > v) { v=$4+0.0; }}END{print int(v)}' ${COREMARK_MP_FILES:-"None"} 2>/dev/null)
	results["dhrystone"]=$(awk '($1 == "VAX" && $2 == "MIPS"){if ($5+0.0 > v) { v=$5+0.0; }}END{print v}' ${DHRYSTONE_FILES:-"None"} 2>/dev/null)
	results["linpack"]=$(awk '($1 == "Unrolled" && $2 == "Double" && $3 == "Precision" && $4 != "Linpack"){if ($4+0.0 > v) { v=$4+0.0; }}END{print v}' ${LINPACK_FILES:-"None"} 2>/dev/null)
	results["scimark"]=$(awk '($1 == "Composite" && $2 == "Score:" && $3 != "inf" && $3 < 4000000){if ($3+0.0 > v) { v=$3+0.0; }}END{print v}' ${SCIMARK2_FILES:-"None"} 2>/dev/null)
	results["whetstone"]=$(awk '($1 == "MWIPS"){if ($2+0.0 > v) { v=$2+0.0; }}END{print v}' ${WHETSTONE_FILES:-"None"} 2>/dev/null)
	results["whetstone_mp"]=$(awk '($1 == "Total"){if ($2+0.0 > v) { v=$2+0.0; }}END{print int(v)}' ${WHETSTONE_MP_FILES:-"None"} 2>/dev/null)
	results["whetstone_mp_pessimistic"]=$(awk '($1 == "MWIPS" && $3 == "Based" ){if ($2+0.0 > v) { v=$2+0.0; }}END{print int(v)}' ${WHETSTONE_MP_FILES:-"None"} 2>/dev/null)
	results["mpmflops"]=$(awk '($1 == "Data" && $2 == "in" && $3 == "&" && $4 == "out"){if ($9+0.0 > v) { v=$9+0.0; }}END{print int(v)}' ${MPMFLOPS_FILES:-"None"} 2>/dev/null)
	
	STREAM_FILES_MP1="$(ls "${NAME}"/STREAM*mp1.*log 2>&1 | grep "${EXTRA_FILTER}")"
	for STREAM_TEST in "Copy:" "Scale:" "Add:" "Triad:"; do
		RES=$(awk -v t=${STREAM_TEST} '($1 == t){if ($2+0.0 > v) {v = $2+0.0}}END{print v}' ${STREAM_FILES_MP1:-"None"} 2>/dev/null)
		TEST="${STREAM_TEST/:/}"
		results["stream_mp1_${TEST,,}"]="${RES}"
	done


	STREAM_FILES="$(ls "${NAME}"/STREAM*.log 2>&1 | grep "${EXTRA_FILTER}")"
	for STREAM_TEST in "Copy:" "Scale:" "Add:" "Triad:"; do
		RES=$(awk -v t=${STREAM_TEST} '($1 == t){if ($2+0.0 > v) {v = $2+0.0}}END{print v}' ${STREAM_FILES:-"None"} 2>/dev/null)
		TEST="${STREAM_TEST/:/}"
		results["stream_mpBEST_${TEST,,}"]="${RES}"
	done
	
	# Lower is better
	SUPERPI_FILES="$(ls "${NAME}"/SuperPI*.log 2>&1 | grep "${EXTRA_FILTER}")"
	results["superpi"]=$(awk 'BEGIN{v=-1}($2 == "sec."){if ($1+0.0 < v || v < 0) {v = $1+0.0}}END{print v}' ${SUPERPI_FILES:-"None"} 2>/dev/null)
	
	# Higher is better
	GSYNTH_FILES="$(ls "${NAME}"/gsynth_*.log 2>&1 | grep "${EXTRA_FILTER}")"
	results["gsynth"]=$(awk -F= 'BEGIN{v=-1}($1 == "g_synth_score"){if ($2+0.0 > v) {v = $2+0.0}}END{print v}' ${GSYNTH_FILES:-"None"} 2>/dev/null)
	
	LLOOP_FILES="$(ls "${NAME}"/lloops_*.log 2>&1 | grep "${EXTRA_FILTER}")"
	results["lloops_maximum"]=$(awk '($1 == "Maximum"){if (!$3) { gsub(/[a-zA-Z]+/, "", $2); $3 = $2; };if ($3+0.0 > v) { v=$3+0.0; }}END{print v}' ${LLOOP_FILES:-"None"} 2>/dev/null)
	results["lloops_average"]=$(awk '($1 == "Average"){if (!$3) { gsub(/[a-zA-Z]+/, "", $2); $3 = $2; };if ($3+0.0 > v) { v=$3+0.0; }}END{print v}' ${LLOOP_FILES:-"None"} 2>/dev/null)
	results["lloops_geometric"]=$(awk '($1 == "Geometric"){if (!$3) { gsub(/[a-zA-Z]+/, "", $2); $3 = $2; };if ($3+0.0 > v) { v=$3+0.0; }}END{print v}' ${LLOOP_FILES:-"None"} 2>/dev/null)
	results["lloops_harmonic"]=$(awk '($1 == "Harmonic"){if (!$3) { gsub(/[a-zA-Z]+/, "", $2); $3 = $2; };if ($3+0.0 > v) { v=$3+0.0; }}END{print v}' ${LLOOP_FILES:-"None"} 2>/dev/null)
	results["lloops_minimum"]=$(awk '($1 == "Minimum"){if (!$3) { gsub(/[a-zA-Z]+/, "", $2); $3 = $2; };if ($3+0.0 > v) { v=$3+0.0; }}END{print v}' ${LLOOP_FILES:-"None"} 2>/dev/null)
}
