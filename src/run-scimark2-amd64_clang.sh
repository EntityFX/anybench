#!/bin/bash
mkdir "../results/"
mkdir "../results/amd64_clang"

echo -e "Run Scimark2\n"

../bin/linux/amd64_clang/scimark2_amd64_clang-x86-64_O2 2>&1 > ../results/amd64_clang/scimark2_amd64_clang-x86-64_O2.stdout_stderr.log
../bin/linux/amd64_clang/scimark2_amd64_clang-x86-64_O3 2>&1 > ../results/amd64_clang/scimark2_amd64_clang-x86-64_O3.stdout_stderr.log
