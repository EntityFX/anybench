#!/bin/bash
mkdir "../bin/linux/"
mkdir "../bin/linux/amd64_clang"

echo -e "Compile Scimark2\n"

clang -Iscimark2 scimark2/*.c -lm -o ../bin/linux/amd64_clang/scimark2_amd64_clang-x86-64_O2 -O2 -march=x86-64 -D options="\"amd64_clang x86-64 optimized\""
chmod +x ../bin/linux/amd64_clang/scimark2_amd64_clang-x86-64_O2
clang -Iscimark2 scimark2/*.c -lm -o ../bin/linux/amd64_clang/scimark2_amd64_clang-x86-64_O3 -O3 -march=x86-64 -D options="\"amd64_clang x86-64 optimized\""
chmod +x ../bin/linux/amd64_clang/scimark2_amd64_clang-x86-64_O3


