#!/bin/bash
mkdir "../bin/linux/"
mkdir "../bin/linux/i386"

echo -e "Compile Coremark\n"

gcc -Icoremark/linux -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux/core_portme.c -o ../bin/linux/i386/coremark_i386-i386_O2 -O2 -march=i386 -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/coremark_i386-i386_O2
gcc -Icoremark/linux -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux/core_portme.c -o ../bin/linux/i386/coremark_i386-i386_O3 -O3 -march=i386 -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/coremark_i386-i386_O3
gcc -Icoremark/linux -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux/core_portme.c -o ../bin/linux/i386/coremark_i386-i686_O2 -O2 -march=i686 -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/coremark_i386-i686_O2
gcc -Icoremark/linux -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux/core_portme.c -o ../bin/linux/i386/coremark_i386-i686_O3 -O3 -march=i686 -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/coremark_i386-i686_O3

echo -e "Compile Coremark 2 Thread\n"

gcc -Icoremark/linux -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux/core_portme.c -o ../bin/linux/i386/coremark_mp2_i386-i386_O2 -O2 -march=i386 -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/coremark_mp2_i386-i386_O2
gcc -Icoremark/linux -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux/core_portme.c -o ../bin/linux/i386/coremark_mp2_i386-i386_O3 -O3 -march=i386 -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/coremark_mp2_i386-i386_O3
gcc -Icoremark/linux -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux/core_portme.c -o ../bin/linux/i386/coremark_mp2_i386-i686_O2 -O2 -march=i686 -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/coremark_mp2_i386-i686_O2
gcc -Icoremark/linux -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux/core_portme.c -o ../bin/linux/i386/coremark_mp2_i386-i686_O3 -O3 -march=i686 -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/coremark_mp2_i386-i686_O3

echo -e "Compile Coremark 4 Thread\n"

gcc -Icoremark/linux -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux/core_portme.c -o ../bin/linux/i386/coremark_mp4_i386-i386_O2 -O2 -march=i386 -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/coremark_mp4_i386-i386_O2
gcc -Icoremark/linux -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux/core_portme.c -o ../bin/linux/i386/coremark_mp4_i386-i386_O3 -O3 -march=i386 -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/coremark_mp4_i386-i386_O3
gcc -Icoremark/linux -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux/core_portme.c -o ../bin/linux/i386/coremark_mp4_i386-i686_O2 -O2 -march=i686 -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/coremark_mp4_i386-i686_O2
gcc -Icoremark/linux -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux/core_portme.c -o ../bin/linux/i386/coremark_mp4_i386-i686_O3 -O3 -march=i686 -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/coremark_mp4_i386-i686_O3

echo -e "Compile Coremark 8 Thread\n"

gcc -Icoremark/linux -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux/core_portme.c -o ../bin/linux/i386/coremark_mp8_i386-i386_O2 -O2 -march=i386 -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/coremark_mp8_i386-i386_O2
gcc -Icoremark/linux -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux/core_portme.c -o ../bin/linux/i386/coremark_mp8_i386-i386_O3 -O3 -march=i386 -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/coremark_mp8_i386-i386_O3
gcc -Icoremark/linux -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux/core_portme.c -o ../bin/linux/i386/coremark_mp8_i386-i686_O2 -O2 -march=i686 -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/coremark_mp8_i386-i686_O2
gcc -Icoremark/linux -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux/core_portme.c -o ../bin/linux/i386/coremark_mp8_i386-i686_O3 -O3 -march=i686 -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/coremark_mp8_i386-i686_O3


