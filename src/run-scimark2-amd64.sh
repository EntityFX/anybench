#!/bin/bash
mkdir "../results/"
mkdir "../results/amd64"

echo -e "Run Scimark2\n"

../bin/linux/amd64/scimark2_amd64-x86-64_O3 n 2>&1 > ../results/amd64/scimark2_amd64-x86-64_O3.stdout_stderr.log
../bin/linux/amd64/scimark2_amd64-x86-64_O4 n 2>&1 > ../results/amd64/scimark2_amd64-x86-64_O4.stdout_stderr.log
../bin/linux/amd64/scimark2_amd64-x86-64_Ofast n 2>&1 > ../results/amd64/scimark2_amd64-x86-64_Ofast.stdout_stderr.log
