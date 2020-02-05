#!/bin/bash
mkdir "../bin/linux/"
mkdir "../bin/linux/amd64"

echo -e "Compile Coremark\n"

cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/amd64/coremark_amd64-x86-64_O3 -O3 -march=x86-64 -D options="\"amd64 x86-64 optimized\""
chmod +x ../bin/linux/amd64/coremark_amd64-x86-64_O3
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/amd64/coremark_amd64-x86-64_O4 -O4 -march=x86-64 -D options="\"amd64 x86-64 optimized\""
chmod +x ../bin/linux/amd64/coremark_amd64-x86-64_O4
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/amd64/coremark_amd64-x86-64_Ofast -Ofast -march=x86-64 -D options="\"amd64 x86-64 optimized\""
chmod +x ../bin/linux/amd64/coremark_amd64-x86-64_Ofast

echo -e "Compile Coremark 2 Thread\n"

cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/amd64/coremark_mp2_amd64-x86-64_O3 -O3 -march=x86-64 -D options="\"amd64 x86-64 optimized\""
chmod +x ../bin/linux/amd64/coremark_mp2_amd64-x86-64_O3
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/amd64/coremark_mp2_amd64-x86-64_O4 -O4 -march=x86-64 -D options="\"amd64 x86-64 optimized\""
chmod +x ../bin/linux/amd64/coremark_mp2_amd64-x86-64_O4
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/amd64/coremark_mp2_amd64-x86-64_Ofast -Ofast -march=x86-64 -D options="\"amd64 x86-64 optimized\""
chmod +x ../bin/linux/amd64/coremark_mp2_amd64-x86-64_Ofast

echo -e "Compile Coremark 4 Thread\n"

cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/amd64/coremark_mp4_amd64-x86-64_O3 -O3 -march=x86-64 -D options="\"amd64 x86-64 optimized\""
chmod +x ../bin/linux/amd64/coremark_mp4_amd64-x86-64_O3
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/amd64/coremark_mp4_amd64-x86-64_O4 -O4 -march=x86-64 -D options="\"amd64 x86-64 optimized\""
chmod +x ../bin/linux/amd64/coremark_mp4_amd64-x86-64_O4
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/amd64/coremark_mp4_amd64-x86-64_Ofast -Ofast -march=x86-64 -D options="\"amd64 x86-64 optimized\""
chmod +x ../bin/linux/amd64/coremark_mp4_amd64-x86-64_Ofast

echo -e "Compile Coremark 8 Thread\n"

cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/amd64/coremark_mp8_amd64-x86-64_O3 -O3 -march=x86-64 -D options="\"amd64 x86-64 optimized\""
chmod +x ../bin/linux/amd64/coremark_mp8_amd64-x86-64_O3
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/amd64/coremark_mp8_amd64-x86-64_O4 -O4 -march=x86-64 -D options="\"amd64 x86-64 optimized\""
chmod +x ../bin/linux/amd64/coremark_mp8_amd64-x86-64_O4
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/amd64/coremark_mp8_amd64-x86-64_Ofast -Ofast -march=x86-64 -D options="\"amd64 x86-64 optimized\""
chmod +x ../bin/linux/amd64/coremark_mp8_amd64-x86-64_Ofast


