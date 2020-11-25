#!/bin/bash
mkdir "../bin/mac/"
mkdir "../bin/mac/powerpc_mac"

echo -e "Compile Scimark2\n"

gcc -Iscimark2 scimark2/*.c -lm -o ../bin/mac/powerpc_mac/scimark2_powerpc_mac-powerpc_O2 -O2 -mcpu=powerpc
chmod +x ../bin/mac/powerpc_mac/scimark2_powerpc_mac-powerpc_O2
gcc -Iscimark2 scimark2/*.c -lm -o ../bin/mac/powerpc_mac/scimark2_powerpc_mac-powerpc_O3 -O3 -mcpu=powerpc
chmod +x ../bin/mac/powerpc_mac/scimark2_powerpc_mac-powerpc_O3


