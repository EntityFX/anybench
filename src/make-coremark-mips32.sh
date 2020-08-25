#!/bin/sh
mkdir "../bin/linux/"
mkdir "../bin/linux/mips32"

echo -e "Compile Coremark\n"

gcc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/mips32/coremark_mips32-native_O2 -O2 -march=native -D options="\"mips32 native optimized\""
chmod +x ../bin/linux/mips32/coremark_mips32-native_O2
gcc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/mips32/coremark_mips32-native_O3 -O3 -march=native -D options="\"mips32 native optimized\""
chmod +x ../bin/linux/mips32/coremark_mips32-native_O3
gcc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/mips32/coremark_mips32-74kc_O2 -O2 -march=74kc -D options="\"mips32 74kc optimized\""
chmod +x ../bin/linux/mips32/coremark_mips32-74kc_O2
gcc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/mips32/coremark_mips32-74kc_O3 -O3 -march=74kc -D options="\"mips32 74kc optimized\""
chmod +x ../bin/linux/mips32/coremark_mips32-74kc_O3
