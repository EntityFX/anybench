#!/bin/bash
mkdir "../bin/linux/"
mkdir "../bin/linux/arm"

echo -e "Compile Scimark2\n"

cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/arm/scimark2_arm-armv6_O2 -O2 -march=armv6 -D options="\"arm armv6 optimized\""
chmod +x ../bin/linux/arm/scimark2_arm-armv6_O2
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/arm/scimark2_arm-armv6_O3 -O3 -march=armv6 -D options="\"arm armv6 optimized\""
chmod +x ../bin/linux/arm/scimark2_arm-armv6_O3
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/arm/scimark2_arm-armv7_O2 -O2 -march=armv7 -D options="\"arm armv7 optimized\""
chmod +x ../bin/linux/arm/scimark2_arm-armv7_O2
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/arm/scimark2_arm-armv7_O3 -O3 -march=armv7 -D options="\"arm armv7 optimized\""
chmod +x ../bin/linux/arm/scimark2_arm-armv7_O3
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/arm/scimark2_arm-armv7-a_O2 -O2 -march=armv7-a -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/scimark2_arm-armv7-a_O2
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/arm/scimark2_arm-armv7-a_ffast_O2 -O2 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/scimark2_arm-armv7-a_ffast_O2
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/arm/scimark2_arm-armv7-a_ffast_O2_cortex-a9 -O2 -mtune=cortex-a9 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/scimark2_arm-armv7-a_ffast_O2_cortex-a9
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/arm/scimark2_arm-armv7-a_ffast_O2_cortex-a7 -O2 -mtune=cortex-a7 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/scimark2_arm-armv7-a_ffast_O2_cortex-a7
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/arm/scimark2_arm-armv7-a_O3 -O3 -march=armv7-a -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/scimark2_arm-armv7-a_O3
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/arm/scimark2_arm-armv7-a_ffast_O3 -O3 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/scimark2_arm-armv7-a_ffast_O3
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/arm/scimark2_arm-armv7-a_ffast_O3_cortex-a9 -O3 -mtune=cortex-a9 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/scimark2_arm-armv7-a_ffast_O3_cortex-a9
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/arm/scimark2_arm-armv7-a_ffast_O3_cortex-a7 -O3 -mtune=cortex-a7 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/scimark2_arm-armv7-a_ffast_O3_cortex-a7
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/arm/scimark2_arm-armv8-a_O2 -O2 -march=armv8-a -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/scimark2_arm-armv8-a_O2
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/arm/scimark2_arm-armv8-a_ffast_O2 -O2 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/scimark2_arm-armv8-a_ffast_O2
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/arm/scimark2_arm-armv8-a_ffast_O2_cortex-a53 -O2 -mtune=cortex-a53 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/scimark2_arm-armv8-a_ffast_O2_cortex-a53
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/arm/scimark2_arm-armv8-a_ffast_O2_cortex-a57 -O2 -mtune=cortex-a57 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/scimark2_arm-armv8-a_ffast_O2_cortex-a57
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/arm/scimark2_arm-armv8-a_O3 -O3 -march=armv8-a -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/scimark2_arm-armv8-a_O3
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/arm/scimark2_arm-armv8-a_ffast_O3 -O3 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/scimark2_arm-armv8-a_ffast_O3
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/arm/scimark2_arm-armv8-a_ffast_O3_cortex-a53 -O3 -mtune=cortex-a53 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/scimark2_arm-armv8-a_ffast_O3_cortex-a53
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/arm/scimark2_arm-armv8-a_ffast_O3_cortex-a57 -O3 -mtune=cortex-a57 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/scimark2_arm-armv8-a_ffast_O3_cortex-a57
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/arm/scimark2_arm-armv8.1-a_O2 -O2 -march=armv8.1-a -D options="\"arm armv8.1-a optimized\""
chmod +x ../bin/linux/arm/scimark2_arm-armv8.1-a_O2
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/arm/scimark2_arm-armv8.1-a_O3 -O3 -march=armv8.1-a -D options="\"arm armv8.1-a optimized\""
chmod +x ../bin/linux/arm/scimark2_arm-armv8.1-a_O3


