#!/bin/bash
mkdir "../bin/mac/"
mkdir "../bin/mac/powerpc_mac"

echo -e "Compile Coremark\n"

gcc -Icoremark/mac -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 "\" coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/mac/core_portme.c -o ../bin/mac/powerpc_mac/coremark_powerpc_mac-powerpc_O2 -O2 -mcpu=powerpc
chmod +x ../bin/mac/powerpc_mac/coremark_powerpc_mac-powerpc_O2
gcc -Icoremark/mac -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 "\" coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/mac/core_portme.c -o ../bin/mac/powerpc_mac/coremark_powerpc_mac-powerpc_O3 -O3 -mcpu=powerpc
chmod +x ../bin/mac/powerpc_mac/coremark_powerpc_mac-powerpc_O3
