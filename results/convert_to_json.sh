#!/usr/bin/env bash
. parse_results_base.sh
NAME="${1}"
if [[ ! -d ${NAME} ]]; then
 echo "Not a directory: ${NAME}"
 exit 1
fi

declare -A res

parse_results res ${NAME}

echo -e "\"${NAME}\": {\n\t\"Coremark\": ${res["coremark"]:--1},\n\t\"CoremarkMP\": ${res["coremark_mp"]:--1},\n\t\"Dhrystone\": ${res["dhrystone"]:--1},\n\t\"Linpack\": ${res["linpack"]:--1},\n\t\"Scimark2\": ${res["scimark"]:--1},\n\t\"Whetstone\": ${res["whetstone"]:--1},\n\t\"MP MFLOPS\": ${res["mpmflops"]:--1},\n\t\"WhetstoneMP\": ${res["whetstone_mp"]:--1},\n\t\"WhetstoneMP Pessimistic\": ${res["whetstone_mp_pessimistic"]:--1},"

for k in "${!res[@]}"; do
	if [[ ${k} = max_estimated_frequency_hz_cpu* ]]; then
		echo -e "\t\"${k}\": ${res[$k]},"
	fi
done

for STREAM_TEST in "Copy:" "Scale:" "Add:" "Triad:"; do
	TEST="${STREAM_TEST/:/}"
	echo -e "\t\"Stream ST ${TEST}\": ${res[stream_mp1_${TEST,,}]:--1}"
done
for STREAM_TEST in "Copy:" "Scale:" "Add:" "Triad:"; do
	TEST="${STREAM_TEST/:/}"
	echo -e "\t\"Stream MT ${TEST}\": ${res[stream_mpBEST_${TEST,,}]:--1}"
done



# Lower is better
echo -e "\t\"SuperPI 4M\": ${res["superpi"]:--1}"

# Higher is better
echo -e "\t\"gsynth\": ${res["gsynth"]:--1}"

for LLOOPS_TEST in "maximum" "average" "geometric" "harmonic" "minimum"; do
	echo -e "\t\"LLoops ${LLOOPS_TEST}\": ${res["lloops_${LLOOPS_TEST}"]:--1}"
done

echo -e "}"
