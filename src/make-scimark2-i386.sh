#!/bin/bash
mkdir "../bin/linux/"
mkdir "../bin/linux/i386"

echo -e "Compile Scimark2\n"

gcc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/i386/scimark2_i386-i386_O2 -O2 -march=i386 -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/scimark2_i386-i386_O2
gcc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/i386/scimark2_i386-i386_O3 -O3 -march=i386 -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/scimark2_i386-i386_O3
gcc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/i386/scimark2_i386-i686_O2 -O2 -march=i686 -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/scimark2_i386-i686_O2
gcc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/i386/scimark2_i386-i686_O3 -O3 -march=i686 -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/scimark2_i386-i686_O3


