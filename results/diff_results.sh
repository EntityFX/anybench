#!/usr/bin/env bash
. parse_results_base.sh
BASE_NAME="${1}"
if [[ ! -d ${BASE_NAME} ]]; then
 echo "Not a directory: ${BASE_NAME}"
 exit 1
fi

NEW_NAME="${2}"
if [[ ! -d ${NEW_NAME} ]]; then
 echo "Not a directory: ${NAME}"
 exit 1
fi

echo "Will output speed difference in percentage (note: for those where lower score is better, e.x. superpi, script will invert values)"
echo "BASE=${BASE_NAME}"
echo "NEW=${NEW_NAME}"

declare -A res1
declare -A res2

parse_results res1 ${BASE_NAME}
parse_results res2 ${NEW_NAME}

for k in "${!res1[@]}"; do
	if [[ -z "${res1[${k}]}" ]] || [[ -z "${res2[${k}]}" ]]; then
		continue
	fi

	if [[ ${k} == "superpi" ]]; then
		echo | awk -vn="${k}" -v r1="${res1[${k}]}" -v r2="${res2[${k}]}" 'END{print "\""n"\": " r1/r2*100 "%"}'
	else
		echo | awk -vn="${k}" -v r1="${res1[${k}]}" -v r2="${res2[${k}]}" 'END{print "\""n"\": " r2/r1*100 "%"}'
	fi
done | sort
