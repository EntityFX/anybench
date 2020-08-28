#!/bin/bash
mkdir "../results/"
mkdir "../results/i386"

echo -e "Run Scimark2\n"

../bin/linux/i386/scimark2_i386-i386_O2 2>&1 > ../results/i386/scimark2_i386-i386_O2.stdout_stderr.log
../bin/linux/i386/scimark2_i386-i386_O3 2>&1 > ../results/i386/scimark2_i386-i386_O3.stdout_stderr.log
../bin/linux/i386/scimark2_i386-i686_O2 2>&1 > ../results/i386/scimark2_i386-i686_O2.stdout_stderr.log
../bin/linux/i386/scimark2_i386-i686_O3 2>&1 > ../results/i386/scimark2_i386-i686_O3.stdout_stderr.log
