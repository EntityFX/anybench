#!/bin/bash
mkdir "../results/"
mkdir "../results/powerpc_mac"

echo -e "Run Scimark2\n"

../bin/mac/powerpc_mac/scimark2_powerpc_mac-powerpc_O2 2>&1 > ../results/powerpc_mac/scimark2_powerpc_mac-powerpc_O2.stdout_stderr.log
../bin/mac/powerpc_mac/scimark2_powerpc_mac-powerpc_O3 2>&1 > ../results/powerpc_mac/scimark2_powerpc_mac-powerpc_O3.stdout_stderr.log
