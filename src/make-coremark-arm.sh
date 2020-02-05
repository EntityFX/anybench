#!/bin/bash
mkdir "../bin/linux/"
mkdir "../bin/linux/arm"

echo -e "Compile Coremark\n"

cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_arm-armv6_O2 -O2 -march=armv6 -D options="\"arm armv6 optimized\""
chmod +x ../bin/linux/arm/coremark_arm-armv6_O2
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_arm-armv6_O3 -O3 -march=armv6 -D options="\"arm armv6 optimized\""
chmod +x ../bin/linux/arm/coremark_arm-armv6_O3
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_arm-armv7_O2 -O2 -march=armv7 -D options="\"arm armv7 optimized\""
chmod +x ../bin/linux/arm/coremark_arm-armv7_O2
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_arm-armv7_O3 -O3 -march=armv7 -D options="\"arm armv7 optimized\""
chmod +x ../bin/linux/arm/coremark_arm-armv7_O3
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_arm-armv7-a_O2 -O2 -march=armv7-a -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_arm-armv7-a_O2
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_arm-armv7-a_ffast_O2 -O2 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_arm-armv7-a_ffast_O2
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_arm-armv7-a_ffast_O2_cortex-a9 -O2 -mtune=cortex-a9 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_arm-armv7-a_ffast_O2_cortex-a9
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_arm-armv7-a_ffast_O2_cortex-a7 -O2 -mtune=cortex-a7 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_arm-armv7-a_ffast_O2_cortex-a7
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_arm-armv7-a_O3 -O3 -march=armv7-a -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_arm-armv7-a_O3
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_arm-armv7-a_ffast_O3 -O3 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_arm-armv7-a_ffast_O3
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_arm-armv7-a_ffast_O3_cortex-a9 -O3 -mtune=cortex-a9 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_arm-armv7-a_ffast_O3_cortex-a9
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_arm-armv7-a_ffast_O3_cortex-a7 -O3 -mtune=cortex-a7 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_arm-armv7-a_ffast_O3_cortex-a7
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_arm-armv8-a_O2 -O2 -march=armv8-a -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_arm-armv8-a_O2
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_arm-armv8-a_ffast_O2 -O2 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_arm-armv8-a_ffast_O2
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_arm-armv8-a_ffast_O2_cortex-a53 -O2 -mtune=cortex-a53 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_arm-armv8-a_ffast_O2_cortex-a53
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_arm-armv8-a_ffast_O2_cortex-a57 -O2 -mtune=cortex-a57 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_arm-armv8-a_ffast_O2_cortex-a57
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_arm-armv8-a_O3 -O3 -march=armv8-a -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_arm-armv8-a_O3
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_arm-armv8-a_ffast_O3 -O3 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_arm-armv8-a_ffast_O3
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_arm-armv8-a_ffast_O3_cortex-a53 -O3 -mtune=cortex-a53 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_arm-armv8-a_ffast_O3_cortex-a53
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_arm-armv8-a_ffast_O3_cortex-a57 -O3 -mtune=cortex-a57 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_arm-armv8-a_ffast_O3_cortex-a57
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_arm-armv8.1-a_O2 -O2 -march=armv8.1-a -D options="\"arm armv8.1-a optimized\""
chmod +x ../bin/linux/arm/coremark_arm-armv8.1-a_O2
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1  -lrt"\" -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_arm-armv8.1-a_O3 -O3 -march=armv8.1-a -D options="\"arm armv8.1-a optimized\""
chmod +x ../bin/linux/arm/coremark_arm-armv8.1-a_O3

echo -e "Compile Coremark 2 Thread\n"

cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp2_arm-armv6_O2 -O2 -march=armv6 -D options="\"arm armv6 optimized\""
chmod +x ../bin/linux/arm/coremark_mp2_arm-armv6_O2
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp2_arm-armv6_O3 -O3 -march=armv6 -D options="\"arm armv6 optimized\""
chmod +x ../bin/linux/arm/coremark_mp2_arm-armv6_O3
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp2_arm-armv7_O2 -O2 -march=armv7 -D options="\"arm armv7 optimized\""
chmod +x ../bin/linux/arm/coremark_mp2_arm-armv7_O2
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp2_arm-armv7_O3 -O3 -march=armv7 -D options="\"arm armv7 optimized\""
chmod +x ../bin/linux/arm/coremark_mp2_arm-armv7_O3
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp2_arm-armv7-a_O2 -O2 -march=armv7-a -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp2_arm-armv7-a_O2
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp2_arm-armv7-a_ffast_O2 -O2 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp2_arm-armv7-a_ffast_O2
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp2_arm-armv7-a_ffast_O2_cortex-a9 -O2 -mtune=cortex-a9 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp2_arm-armv7-a_ffast_O2_cortex-a9
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp2_arm-armv7-a_ffast_O2_cortex-a7 -O2 -mtune=cortex-a7 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp2_arm-armv7-a_ffast_O2_cortex-a7
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp2_arm-armv7-a_O3 -O3 -march=armv7-a -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp2_arm-armv7-a_O3
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp2_arm-armv7-a_ffast_O3 -O3 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp2_arm-armv7-a_ffast_O3
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp2_arm-armv7-a_ffast_O3_cortex-a9 -O3 -mtune=cortex-a9 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp2_arm-armv7-a_ffast_O3_cortex-a9
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp2_arm-armv7-a_ffast_O3_cortex-a7 -O3 -mtune=cortex-a7 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp2_arm-armv7-a_ffast_O3_cortex-a7
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp2_arm-armv8-a_O2 -O2 -march=armv8-a -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp2_arm-armv8-a_O2
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp2_arm-armv8-a_ffast_O2 -O2 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp2_arm-armv8-a_ffast_O2
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp2_arm-armv8-a_ffast_O2_cortex-a53 -O2 -mtune=cortex-a53 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp2_arm-armv8-a_ffast_O2_cortex-a53
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp2_arm-armv8-a_ffast_O2_cortex-a57 -O2 -mtune=cortex-a57 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp2_arm-armv8-a_ffast_O2_cortex-a57
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp2_arm-armv8-a_O3 -O3 -march=armv8-a -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp2_arm-armv8-a_O3
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp2_arm-armv8-a_ffast_O3 -O3 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp2_arm-armv8-a_ffast_O3
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp2_arm-armv8-a_ffast_O3_cortex-a53 -O3 -mtune=cortex-a53 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp2_arm-armv8-a_ffast_O3_cortex-a53
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp2_arm-armv8-a_ffast_O3_cortex-a57 -O3 -mtune=cortex-a57 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp2_arm-armv8-a_ffast_O3_cortex-a57
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp2_arm-armv8.1-a_O2 -O2 -march=armv8.1-a -D options="\"arm armv8.1-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp2_arm-armv8.1-a_O2
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=2 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp2_arm-armv8.1-a_O3 -O3 -march=armv8.1-a -D options="\"arm armv8.1-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp2_arm-armv8.1-a_O3

echo -e "Compile Coremark 4 Thread\n"

cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp4_arm-armv6_O2 -O2 -march=armv6 -D options="\"arm armv6 optimized\""
chmod +x ../bin/linux/arm/coremark_mp4_arm-armv6_O2
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp4_arm-armv6_O3 -O3 -march=armv6 -D options="\"arm armv6 optimized\""
chmod +x ../bin/linux/arm/coremark_mp4_arm-armv6_O3
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp4_arm-armv7_O2 -O2 -march=armv7 -D options="\"arm armv7 optimized\""
chmod +x ../bin/linux/arm/coremark_mp4_arm-armv7_O2
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp4_arm-armv7_O3 -O3 -march=armv7 -D options="\"arm armv7 optimized\""
chmod +x ../bin/linux/arm/coremark_mp4_arm-armv7_O3
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp4_arm-armv7-a_O2 -O2 -march=armv7-a -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp4_arm-armv7-a_O2
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp4_arm-armv7-a_ffast_O2 -O2 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp4_arm-armv7-a_ffast_O2
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp4_arm-armv7-a_ffast_O2_cortex-a9 -O2 -mtune=cortex-a9 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp4_arm-armv7-a_ffast_O2_cortex-a9
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp4_arm-armv7-a_ffast_O2_cortex-a7 -O2 -mtune=cortex-a7 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp4_arm-armv7-a_ffast_O2_cortex-a7
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp4_arm-armv7-a_O3 -O3 -march=armv7-a -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp4_arm-armv7-a_O3
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp4_arm-armv7-a_ffast_O3 -O3 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp4_arm-armv7-a_ffast_O3
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp4_arm-armv7-a_ffast_O3_cortex-a9 -O3 -mtune=cortex-a9 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp4_arm-armv7-a_ffast_O3_cortex-a9
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp4_arm-armv7-a_ffast_O3_cortex-a7 -O3 -mtune=cortex-a7 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp4_arm-armv7-a_ffast_O3_cortex-a7
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp4_arm-armv8-a_O2 -O2 -march=armv8-a -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp4_arm-armv8-a_O2
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp4_arm-armv8-a_ffast_O2 -O2 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp4_arm-armv8-a_ffast_O2
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp4_arm-armv8-a_ffast_O2_cortex-a53 -O2 -mtune=cortex-a53 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp4_arm-armv8-a_ffast_O2_cortex-a53
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp4_arm-armv8-a_ffast_O2_cortex-a57 -O2 -mtune=cortex-a57 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp4_arm-armv8-a_ffast_O2_cortex-a57
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp4_arm-armv8-a_O3 -O3 -march=armv8-a -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp4_arm-armv8-a_O3
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp4_arm-armv8-a_ffast_O3 -O3 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp4_arm-armv8-a_ffast_O3
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp4_arm-armv8-a_ffast_O3_cortex-a53 -O3 -mtune=cortex-a53 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp4_arm-armv8-a_ffast_O3_cortex-a53
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp4_arm-armv8-a_ffast_O3_cortex-a57 -O3 -mtune=cortex-a57 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp4_arm-armv8-a_ffast_O3_cortex-a57
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp4_arm-armv8.1-a_O2 -O2 -march=armv8.1-a -D options="\"arm armv8.1-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp4_arm-armv8.1-a_O2
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=4 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp4_arm-armv8.1-a_O3 -O3 -march=armv8.1-a -D options="\"arm armv8.1-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp4_arm-armv8.1-a_O3

echo -e "Compile Coremark 8 Thread\n"

cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp8_arm-armv6_O2 -O2 -march=armv6 -D options="\"arm armv6 optimized\""
chmod +x ../bin/linux/arm/coremark_mp8_arm-armv6_O2
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp8_arm-armv6_O3 -O3 -march=armv6 -D options="\"arm armv6 optimized\""
chmod +x ../bin/linux/arm/coremark_mp8_arm-armv6_O3
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp8_arm-armv7_O2 -O2 -march=armv7 -D options="\"arm armv7 optimized\""
chmod +x ../bin/linux/arm/coremark_mp8_arm-armv7_O2
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp8_arm-armv7_O3 -O3 -march=armv7 -D options="\"arm armv7 optimized\""
chmod +x ../bin/linux/arm/coremark_mp8_arm-armv7_O3
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp8_arm-armv7-a_O2 -O2 -march=armv7-a -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp8_arm-armv7-a_O2
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp8_arm-armv7-a_ffast_O2 -O2 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp8_arm-armv7-a_ffast_O2
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp8_arm-armv7-a_ffast_O2_cortex-a9 -O2 -mtune=cortex-a9 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp8_arm-armv7-a_ffast_O2_cortex-a9
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp8_arm-armv7-a_ffast_O2_cortex-a7 -O2 -mtune=cortex-a7 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp8_arm-armv7-a_ffast_O2_cortex-a7
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp8_arm-armv7-a_O3 -O3 -march=armv7-a -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp8_arm-armv7-a_O3
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp8_arm-armv7-a_ffast_O3 -O3 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp8_arm-armv7-a_ffast_O3
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp8_arm-armv7-a_ffast_O3_cortex-a9 -O3 -mtune=cortex-a9 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp8_arm-armv7-a_ffast_O3_cortex-a9
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp8_arm-armv7-a_ffast_O3_cortex-a7 -O3 -mtune=cortex-a7 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp8_arm-armv7-a_ffast_O3_cortex-a7
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp8_arm-armv8-a_O2 -O2 -march=armv8-a -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp8_arm-armv8-a_O2
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp8_arm-armv8-a_ffast_O2 -O2 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp8_arm-armv8-a_ffast_O2
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp8_arm-armv8-a_ffast_O2_cortex-a53 -O2 -mtune=cortex-a53 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp8_arm-armv8-a_ffast_O2_cortex-a53
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp8_arm-armv8-a_ffast_O2_cortex-a57 -O2 -mtune=cortex-a57 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp8_arm-armv8-a_ffast_O2_cortex-a57
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp8_arm-armv8-a_O3 -O3 -march=armv8-a -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp8_arm-armv8-a_O3
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp8_arm-armv8-a_ffast_O3 -O3 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp8_arm-armv8-a_ffast_O3
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp8_arm-armv8-a_ffast_O3_cortex-a53 -O3 -mtune=cortex-a53 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp8_arm-armv8-a_ffast_O3_cortex-a53
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp8_arm-armv8-a_ffast_O3_cortex-a57 -O3 -mtune=cortex-a57 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp8_arm-armv8-a_ffast_O3_cortex-a57
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp8_arm-armv8.1-a_O2 -O2 -march=armv8.1-a -D options="\"arm armv8.1-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp8_arm-armv8.1-a_O2
cc -Icoremark/linux64 -Icoremark -DFLAGS_STR=\""-g -DPERFORMANCE_RUN=1 -lrt"\" -DMULTITHREAD=8 -DUSE_FORK=1  -lrt coremark/core_list_join.c coremark/core_main.c coremark/core_matrix.c coremark/core_state.c coremark/core_util.c coremark/linux64/core_portme.c -o ../bin/linux/arm/coremark_mp8_arm-armv8.1-a_O3 -O3 -march=armv8.1-a -D options="\"arm armv8.1-a optimized\""
chmod +x ../bin/linux/arm/coremark_mp8_arm-armv8.1-a_O3


