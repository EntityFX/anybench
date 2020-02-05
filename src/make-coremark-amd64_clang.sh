#!/bin/bash
mkdir "../bin/linux/"
mkdir "../bin/linux/amd64_clang"

echo -e "Compile Coremark\n"

clang -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/amd64_clang/coremark_amd64_clang-__O2 -O2 -march=_ -D options="\"amd64_clang _ optimized\""
chmod +x ../bin/linux/amd64_clang/coremark_amd64_clang-__O2
clang -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/amd64_clang/coremark_amd64_clang-__O3 -O3 -march=_ -D options="\"amd64_clang _ optimized\""
chmod +x ../bin/linux/amd64_clang/coremark_amd64_clang-__O3

echo -e "Compile Coremark 2 Thread\n"

clang -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/amd64_clang/coremark_mp2_amd64_clang-__O2 -O2 -march=_ -D options="\"amd64_clang _ optimized\""
chmod +x ../bin/linux/amd64_clang/coremark_mp2_amd64_clang-__O2
clang -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/amd64_clang/coremark_mp2_amd64_clang-__O3 -O3 -march=_ -D options="\"amd64_clang _ optimized\""
chmod +x ../bin/linux/amd64_clang/coremark_mp2_amd64_clang-__O3

echo -e "Compile Coremark 4 Thread\n"

clang -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/amd64_clang/coremark_mp4_amd64_clang-__O2 -O2 -march=_ -D options="\"amd64_clang _ optimized\""
chmod +x ../bin/linux/amd64_clang/coremark_mp4_amd64_clang-__O2
clang -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/amd64_clang/coremark_mp4_amd64_clang-__O3 -O3 -march=_ -D options="\"amd64_clang _ optimized\""
chmod +x ../bin/linux/amd64_clang/coremark_mp4_amd64_clang-__O3

echo -e "Compile Coremark 8 Thread\n"

clang -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/amd64_clang/coremark_mp8_amd64_clang-__O2 -O2 -march=_ -D options="\"amd64_clang _ optimized\""
chmod +x ../bin/linux/amd64_clang/coremark_mp8_amd64_clang-__O2
clang -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/amd64_clang/coremark_mp8_amd64_clang-__O3 -O3 -march=_ -D options="\"amd64_clang _ optimized\""
chmod +x ../bin/linux/amd64_clang/coremark_mp8_amd64_clang-__O3


