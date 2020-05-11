#!/bin/bash
mkdir "../bin/linux/"
mkdir "../bin/linux/arm"

echo -e "Compile Dhrystone v 2.1\n"

cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/arm/dhrystone_arm-armv6_O2 -O2 -march=armv6 -D options="\"arm armv6 optimized\""
chmod +x ../bin/linux/arm/dhrystone_arm-armv6_O2
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/arm/dhrystone_arm-armv6_O3 -O3 -march=armv6 -D options="\"arm armv6 optimized\""
chmod +x ../bin/linux/arm/dhrystone_arm-armv6_O3
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/arm/dhrystone_arm-armv7_O2 -O2 -march=armv7 -D options="\"arm armv7 optimized\""
chmod +x ../bin/linux/arm/dhrystone_arm-armv7_O2
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/arm/dhrystone_arm-armv7_O3 -O3 -march=armv7 -D options="\"arm armv7 optimized\""
chmod +x ../bin/linux/arm/dhrystone_arm-armv7_O3
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/arm/dhrystone_arm-armv7-a_O2 -O2 -march=armv7-a -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/dhrystone_arm-armv7-a_O2
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/arm/dhrystone_arm-armv7-a_ffast_O2 -O2 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/dhrystone_arm-armv7-a_ffast_O2
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/arm/dhrystone_arm-armv7-a_ffast_O2_cortex-a9 -O2 -mtune=cortex-a9 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/dhrystone_arm-armv7-a_ffast_O2_cortex-a9
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/arm/dhrystone_arm-armv7-a_ffast_O2_cortex-a7 -O2 -mtune=cortex-a7 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/dhrystone_arm-armv7-a_ffast_O2_cortex-a7
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/arm/dhrystone_arm-armv7-a_O3 -O3 -march=armv7-a -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/dhrystone_arm-armv7-a_O3
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/arm/dhrystone_arm-armv7-a_ffast_O3 -O3 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/dhrystone_arm-armv7-a_ffast_O3
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/arm/dhrystone_arm-armv7-a_ffast_O3_cortex-a9 -O3 -mtune=cortex-a9 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/dhrystone_arm-armv7-a_ffast_O3_cortex-a9
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/arm/dhrystone_arm-armv7-a_ffast_O3_cortex-a7 -O3 -mtune=cortex-a7 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/dhrystone_arm-armv7-a_ffast_O3_cortex-a7
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/arm/dhrystone_arm-armv8-a_O2 -O2 -march=armv8-a -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/dhrystone_arm-armv8-a_O2
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/arm/dhrystone_arm-armv8-a_ffast_O2 -O2 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/dhrystone_arm-armv8-a_ffast_O2
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/arm/dhrystone_arm-armv8-a_ffast_O2_cortex-a53 -O2 -mtune=cortex-a53 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/dhrystone_arm-armv8-a_ffast_O2_cortex-a53
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/arm/dhrystone_arm-armv8-a_ffast_O2_cortex-a57 -O2 -mtune=cortex-a57 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/dhrystone_arm-armv8-a_ffast_O2_cortex-a57
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/arm/dhrystone_arm-armv8-a_O3 -O3 -march=armv8-a -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/dhrystone_arm-armv8-a_O3
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/arm/dhrystone_arm-armv8-a_ffast_O3 -O3 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/dhrystone_arm-armv8-a_ffast_O3
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/arm/dhrystone_arm-armv8-a_ffast_O3_cortex-a53 -O3 -mtune=cortex-a53 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/dhrystone_arm-armv8-a_ffast_O3_cortex-a53
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/arm/dhrystone_arm-armv8-a_ffast_O3_cortex-a57 -O3 -mtune=cortex-a57 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/dhrystone_arm-armv8-a_ffast_O3_cortex-a57
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/arm/dhrystone_arm-armv8.1-a_O2 -O2 -march=armv8.1-a -D options="\"arm armv8.1-a optimized\""
chmod +x ../bin/linux/arm/dhrystone_arm-armv8.1-a_O2
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/arm/dhrystone_arm-armv8.1-a_O3 -O3 -march=armv8.1-a -D options="\"arm armv8.1-a optimized\""
chmod +x ../bin/linux/arm/dhrystone_arm-armv8.1-a_O3
# Huawei Taishan
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/arm/dhrystone_arm-armv8.4-a_O2_tsv110 -O2 -march=armv8.4-a -mtune=tsv110 -D options="\"arm armv8.4-a optimized\""
chmod +x ../bin/linux/arm/dhrystone_arm-armv8.4-a_O2_tsv110
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/arm/dhrystone_arm-armv8.4-a_O3_tsv110 -O3 -march=armv8.4-a -mtune=tsv110 -D options="\"arm armv8.4-a optimized\""
chmod +x ../bin/linux/arm/dhrystone_arm-armv8.4-a_O3_tsv110
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/arm/dhrystone_arm-armv8.4-a_Ofast_tsv110 -Ofast -march=armv8.4-a -mtune=tsv110 -D options="\"arm armv8.4-a optimized\""
chmod +x ../bin/linux/arm/dhrystone_arm-armv8.4-a_Ofast_tsv110

echo -e "Compile Whetstone\n"

cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/arm/whetstone_arm-armv6_O2 -O2 -march=armv6 -D options="\"arm armv6 optimized\""
chmod +x ../bin/linux/arm/whetstone_arm-armv6_O2
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/arm/whetstone_arm-armv6_O3 -O3 -march=armv6 -D options="\"arm armv6 optimized\""
chmod +x ../bin/linux/arm/whetstone_arm-armv6_O3
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/arm/whetstone_arm-armv7_O2 -O2 -march=armv7 -D options="\"arm armv7 optimized\""
chmod +x ../bin/linux/arm/whetstone_arm-armv7_O2
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/arm/whetstone_arm-armv7_O3 -O3 -march=armv7 -D options="\"arm armv7 optimized\""
chmod +x ../bin/linux/arm/whetstone_arm-armv7_O3
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/arm/whetstone_arm-armv7-a_O2 -O2 -march=armv7-a -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/whetstone_arm-armv7-a_O2
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/arm/whetstone_arm-armv7-a_ffast_O2 -O2 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/whetstone_arm-armv7-a_ffast_O2
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/arm/whetstone_arm-armv7-a_ffast_O2_cortex-a9 -O2 -mtune=cortex-a9 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/whetstone_arm-armv7-a_ffast_O2_cortex-a9
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/arm/whetstone_arm-armv7-a_ffast_O2_cortex-a7 -O2 -mtune=cortex-a7 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/whetstone_arm-armv7-a_ffast_O2_cortex-a7
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/arm/whetstone_arm-armv7-a_O3 -O3 -march=armv7-a -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/whetstone_arm-armv7-a_O3
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/arm/whetstone_arm-armv7-a_ffast_O3 -O3 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/whetstone_arm-armv7-a_ffast_O3
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/arm/whetstone_arm-armv7-a_ffast_O3_cortex-a9 -O3 -mtune=cortex-a9 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/whetstone_arm-armv7-a_ffast_O3_cortex-a9
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/arm/whetstone_arm-armv7-a_ffast_O3_cortex-a7 -O3 -mtune=cortex-a7 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/whetstone_arm-armv7-a_ffast_O3_cortex-a7
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/arm/whetstone_arm-armv8-a_O2 -O2 -march=armv8-a -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/whetstone_arm-armv8-a_O2
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/arm/whetstone_arm-armv8-a_ffast_O2 -O2 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/whetstone_arm-armv8-a_ffast_O2
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/arm/whetstone_arm-armv8-a_ffast_O2_cortex-a53 -O2 -mtune=cortex-a53 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/whetstone_arm-armv8-a_ffast_O2_cortex-a53
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/arm/whetstone_arm-armv8-a_ffast_O2_cortex-a57 -O2 -mtune=cortex-a57 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/whetstone_arm-armv8-a_ffast_O2_cortex-a57
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/arm/whetstone_arm-armv8-a_O3 -O3 -march=armv8-a -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/whetstone_arm-armv8-a_O3
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/arm/whetstone_arm-armv8-a_ffast_O3 -O3 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/whetstone_arm-armv8-a_ffast_O3
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/arm/whetstone_arm-armv8-a_ffast_O3_cortex-a53 -O3 -mtune=cortex-a53 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/whetstone_arm-armv8-a_ffast_O3_cortex-a53
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/arm/whetstone_arm-armv8-a_ffast_O3_cortex-a57 -O3 -mtune=cortex-a57 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/whetstone_arm-armv8-a_ffast_O3_cortex-a57
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/arm/whetstone_arm-armv8.1-a_O2 -O2 -march=armv8.1-a -D options="\"arm armv8.1-a optimized\""
chmod +x ../bin/linux/arm/whetstone_arm-armv8.1-a_O2
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/arm/whetstone_arm-armv8.1-a_O3 -O3 -march=armv8.1-a -D options="\"arm armv8.1-a optimized\""
chmod +x ../bin/linux/arm/whetstone_arm-armv8.1-a_O3
# Huawei Taishan
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/arm/whetstone_arm-armv8.4-a_O2_tsv110 -O2 -march=armv8.4-a -mtune=tsv110 -D options="\"arm armv8.4-a optimized\""
chmod +x ../bin/linux/arm/whetstone_arm-armv8.4-a_O2_tsv110
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/arm/whetstone_arm-armv8.4-a_O3_tsv110 -O3 -march=armv8.4-a -mtune=tsv110 -D options="\"arm armv8.4-a optimized\""
chmod +x ../bin/linux/arm/whetstone_arm-armv8.4-a_O3_tsv110
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/arm/whetstone_arm-armv8.4-a_Ofast_tsv110 -Ofast -march=armv8.4-a -mtune=tsv110 -D options="\"arm armv8.4-a optimized\""
chmod +x ../bin/linux/arm/whetstone_arm-armv8.4-a_Ofast_tsv110

echo -e "Compile Memspeed\n"

cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/memspeed_arm-armv6_O2 -O2 -march=armv6 -D options="\"arm armv6 optimized\""
chmod +x ../bin/linux/arm/memspeed_arm-armv6_O2
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/memspeed_arm-armv6_O3 -O3 -march=armv6 -D options="\"arm armv6 optimized\""
chmod +x ../bin/linux/arm/memspeed_arm-armv6_O3
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/memspeed_arm-armv7_O2 -O2 -march=armv7 -D options="\"arm armv7 optimized\""
chmod +x ../bin/linux/arm/memspeed_arm-armv7_O2
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/memspeed_arm-armv7_O3 -O3 -march=armv7 -D options="\"arm armv7 optimized\""
chmod +x ../bin/linux/arm/memspeed_arm-armv7_O3
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/memspeed_arm-armv7-a_O2 -O2 -march=armv7-a -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/memspeed_arm-armv7-a_O2
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/memspeed_arm-armv7-a_ffast_O2 -O2 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/memspeed_arm-armv7-a_ffast_O2
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/memspeed_arm-armv7-a_ffast_O2_cortex-a9 -O2 -mtune=cortex-a9 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/memspeed_arm-armv7-a_ffast_O2_cortex-a9
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/memspeed_arm-armv7-a_ffast_O2_cortex-a7 -O2 -mtune=cortex-a7 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/memspeed_arm-armv7-a_ffast_O2_cortex-a7
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/memspeed_arm-armv7-a_O3 -O3 -march=armv7-a -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/memspeed_arm-armv7-a_O3
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/memspeed_arm-armv7-a_ffast_O3 -O3 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/memspeed_arm-armv7-a_ffast_O3
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/memspeed_arm-armv7-a_ffast_O3_cortex-a9 -O3 -mtune=cortex-a9 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/memspeed_arm-armv7-a_ffast_O3_cortex-a9
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/memspeed_arm-armv7-a_ffast_O3_cortex-a7 -O3 -mtune=cortex-a7 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/memspeed_arm-armv7-a_ffast_O3_cortex-a7
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/memspeed_arm-armv8-a_O2 -O2 -march=armv8-a -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/memspeed_arm-armv8-a_O2
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/memspeed_arm-armv8-a_ffast_O2 -O2 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/memspeed_arm-armv8-a_ffast_O2
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/memspeed_arm-armv8-a_ffast_O2_cortex-a53 -O2 -mtune=cortex-a53 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/memspeed_arm-armv8-a_ffast_O2_cortex-a53
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/memspeed_arm-armv8-a_ffast_O2_cortex-a57 -O2 -mtune=cortex-a57 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/memspeed_arm-armv8-a_ffast_O2_cortex-a57
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/memspeed_arm-armv8-a_O3 -O3 -march=armv8-a -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/memspeed_arm-armv8-a_O3
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/memspeed_arm-armv8-a_ffast_O3 -O3 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/memspeed_arm-armv8-a_ffast_O3
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/memspeed_arm-armv8-a_ffast_O3_cortex-a53 -O3 -mtune=cortex-a53 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/memspeed_arm-armv8-a_ffast_O3_cortex-a53
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/memspeed_arm-armv8-a_ffast_O3_cortex-a57 -O3 -mtune=cortex-a57 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/memspeed_arm-armv8-a_ffast_O3_cortex-a57
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/memspeed_arm-armv8.1-a_O2 -O2 -march=armv8.1-a -D options="\"arm armv8.1-a optimized\""
chmod +x ../bin/linux/arm/memspeed_arm-armv8.1-a_O2
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/memspeed_arm-armv8.1-a_O3 -O3 -march=armv8.1-a -D options="\"arm armv8.1-a optimized\""
chmod +x ../bin/linux/arm/memspeed_arm-armv8.1-a_O3
# Huawei Taishan
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/memspeed_arm-armv8.4-a_O2_tsv110 -O2 -march=armv8.4-a -mtune=tsv110 -D options="\"arm armv8.4-a optimized\""
chmod +x ../bin/linux/arm/memspeed_arm-armv8.4-a_O2_tsv110
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/memspeed_arm-armv8.4-a_O3_tsv110 -O3 -march=armv8.4-a -mtune=tsv110 -D options="\"arm armv8.4-a optimized\""
chmod +x ../bin/linux/arm/memspeed_arm-armv8.4-a_O3_tsv110
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/memspeed_arm-armv8.4-a_Ofast_tsv110 -Ofast -march=armv8.4-a -mtune=tsv110 -D options="\"arm armv8.4-a optimized\""
chmod +x ../bin/linux/arm/memspeed_arm-armv8.4-a_Ofast_tsv110

echo -e "Compile Linpack\n"

cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/arm/linpack_arm-armv6_O2 -O2 -march=armv6 -D options="\"arm armv6 optimized\""
chmod +x ../bin/linux/arm/linpack_arm-armv6_O2
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/arm/linpack_arm-armv6_O3 -O3 -march=armv6 -D options="\"arm armv6 optimized\""
chmod +x ../bin/linux/arm/linpack_arm-armv6_O3
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/arm/linpack_arm-armv7_O2 -O2 -march=armv7 -D options="\"arm armv7 optimized\""
chmod +x ../bin/linux/arm/linpack_arm-armv7_O2
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/arm/linpack_arm-armv7_O3 -O3 -march=armv7 -D options="\"arm armv7 optimized\""
chmod +x ../bin/linux/arm/linpack_arm-armv7_O3
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/arm/linpack_arm-armv7-a_O2 -O2 -march=armv7-a -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/linpack_arm-armv7-a_O2
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/arm/linpack_arm-armv7-a_ffast_O2 -O2 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/linpack_arm-armv7-a_ffast_O2
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/arm/linpack_arm-armv7-a_ffast_O2_cortex-a9 -O2 -mtune=cortex-a9 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/linpack_arm-armv7-a_ffast_O2_cortex-a9
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/arm/linpack_arm-armv7-a_ffast_O2_cortex-a7 -O2 -mtune=cortex-a7 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/linpack_arm-armv7-a_ffast_O2_cortex-a7
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/arm/linpack_arm-armv7-a_O3 -O3 -march=armv7-a -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/linpack_arm-armv7-a_O3
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/arm/linpack_arm-armv7-a_ffast_O3 -O3 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/linpack_arm-armv7-a_ffast_O3
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/arm/linpack_arm-armv7-a_ffast_O3_cortex-a9 -O3 -mtune=cortex-a9 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/linpack_arm-armv7-a_ffast_O3_cortex-a9
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/arm/linpack_arm-armv7-a_ffast_O3_cortex-a7 -O3 -mtune=cortex-a7 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/linpack_arm-armv7-a_ffast_O3_cortex-a7
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/arm/linpack_arm-armv8-a_O2 -O2 -march=armv8-a -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/linpack_arm-armv8-a_O2
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/arm/linpack_arm-armv8-a_ffast_O2 -O2 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/linpack_arm-armv8-a_ffast_O2
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/arm/linpack_arm-armv8-a_ffast_O2_cortex-a53 -O2 -mtune=cortex-a53 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/linpack_arm-armv8-a_ffast_O2_cortex-a53
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/arm/linpack_arm-armv8-a_ffast_O2_cortex-a57 -O2 -mtune=cortex-a57 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/linpack_arm-armv8-a_ffast_O2_cortex-a57
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/arm/linpack_arm-armv8-a_O3 -O3 -march=armv8-a -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/linpack_arm-armv8-a_O3
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/arm/linpack_arm-armv8-a_ffast_O3 -O3 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/linpack_arm-armv8-a_ffast_O3
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/arm/linpack_arm-armv8-a_ffast_O3_cortex-a53 -O3 -mtune=cortex-a53 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/linpack_arm-armv8-a_ffast_O3_cortex-a53
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/arm/linpack_arm-armv8-a_ffast_O3_cortex-a57 -O3 -mtune=cortex-a57 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/linpack_arm-armv8-a_ffast_O3_cortex-a57
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/arm/linpack_arm-armv8.1-a_O2 -O2 -march=armv8.1-a -D options="\"arm armv8.1-a optimized\""
chmod +x ../bin/linux/arm/linpack_arm-armv8.1-a_O2
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/arm/linpack_arm-armv8.1-a_O3 -O3 -march=armv8.1-a -D options="\"arm armv8.1-a optimized\""
chmod +x ../bin/linux/arm/linpack_arm-armv8.1-a_O3
# Huawei Taishan
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/arm/linpack_arm-armv8.4-a_O2_tsv110 -O2 -march=armv8.4-a -mtune=tsv110 -D options="\"arm armv8.4-a optimized\""
chmod +x ../bin/linux/arm/linpack_arm-armv8.4-a_O2_tsv110
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/arm/linpack_arm-armv8.4-a_O3_tsv110 -O3 -march=armv8.4-a -mtune=tsv110 -D options="\"arm armv8.4-a optimized\""
chmod +x ../bin/linux/arm/linpack_arm-armv8.4-a_O3_tsv110
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/arm/linpack_arm-armv8.4-a_Ofast_tsv110 -Ofast -march=armv8.4-a -mtune=tsv110 -D options="\"arm armv8.4-a optimized\""
chmod +x ../bin/linux/arm/linpack_arm-armv8.4-a_Ofast_tsv110

echo -e "Compile Lloops\n"

cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/arm/lloops_arm-armv6_O2 -O2 -march=armv6 -D options="\"arm armv6 optimized\""
chmod +x ../bin/linux/arm/lloops_arm-armv6_O2
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/arm/lloops_arm-armv6_O3 -O3 -march=armv6 -D options="\"arm armv6 optimized\""
chmod +x ../bin/linux/arm/lloops_arm-armv6_O3
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/arm/lloops_arm-armv7_O2 -O2 -march=armv7 -D options="\"arm armv7 optimized\""
chmod +x ../bin/linux/arm/lloops_arm-armv7_O2
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/arm/lloops_arm-armv7_O3 -O3 -march=armv7 -D options="\"arm armv7 optimized\""
chmod +x ../bin/linux/arm/lloops_arm-armv7_O3
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/arm/lloops_arm-armv7-a_O2 -O2 -march=armv7-a -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/lloops_arm-armv7-a_O2
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/arm/lloops_arm-armv7-a_ffast_O2 -O2 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/lloops_arm-armv7-a_ffast_O2
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/arm/lloops_arm-armv7-a_ffast_O2_cortex-a9 -O2 -mtune=cortex-a9 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/lloops_arm-armv7-a_ffast_O2_cortex-a9
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/arm/lloops_arm-armv7-a_ffast_O2_cortex-a7 -O2 -mtune=cortex-a7 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/lloops_arm-armv7-a_ffast_O2_cortex-a7
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/arm/lloops_arm-armv7-a_O3 -O3 -march=armv7-a -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/lloops_arm-armv7-a_O3
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/arm/lloops_arm-armv7-a_ffast_O3 -O3 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/lloops_arm-armv7-a_ffast_O3
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/arm/lloops_arm-armv7-a_ffast_O3_cortex-a9 -O3 -mtune=cortex-a9 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/lloops_arm-armv7-a_ffast_O3_cortex-a9
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/arm/lloops_arm-armv7-a_ffast_O3_cortex-a7 -O3 -mtune=cortex-a7 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/lloops_arm-armv7-a_ffast_O3_cortex-a7
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/arm/lloops_arm-armv8-a_O2 -O2 -march=armv8-a -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/lloops_arm-armv8-a_O2
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/arm/lloops_arm-armv8-a_ffast_O2 -O2 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/lloops_arm-armv8-a_ffast_O2
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/arm/lloops_arm-armv8-a_ffast_O2_cortex-a53 -O2 -mtune=cortex-a53 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/lloops_arm-armv8-a_ffast_O2_cortex-a53
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/arm/lloops_arm-armv8-a_ffast_O2_cortex-a57 -O2 -mtune=cortex-a57 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/lloops_arm-armv8-a_ffast_O2_cortex-a57
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/arm/lloops_arm-armv8-a_O3 -O3 -march=armv8-a -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/lloops_arm-armv8-a_O3
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/arm/lloops_arm-armv8-a_ffast_O3 -O3 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/lloops_arm-armv8-a_ffast_O3
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/arm/lloops_arm-armv8-a_ffast_O3_cortex-a53 -O3 -mtune=cortex-a53 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/lloops_arm-armv8-a_ffast_O3_cortex-a53
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/arm/lloops_arm-armv8-a_ffast_O3_cortex-a57 -O3 -mtune=cortex-a57 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/lloops_arm-armv8-a_ffast_O3_cortex-a57
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/arm/lloops_arm-armv8.1-a_O2 -O2 -march=armv8.1-a -D options="\"arm armv8.1-a optimized\""
chmod +x ../bin/linux/arm/lloops_arm-armv8.1-a_O2
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/arm/lloops_arm-armv8.1-a_O3 -O3 -march=armv8.1-a -D options="\"arm armv8.1-a optimized\""
chmod +x ../bin/linux/arm/lloops_arm-armv8.1-a_O3
# Huawei Taishan
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/arm/lloops_arm-armv8.4-a_O2_tsv110 -O2 -march=armv8.4-a -mtune=tsv110 -D options="\"arm armv8.4-a optimized\""
chmod +x ../bin/linux/arm/lloops_arm-armv8.4-a_O2_tsv110
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/arm/lloops_arm-armv8.4-a_O3_tsv110 -O3 -march=armv8.4-a -mtune=tsv110 -D options="\"arm armv8.4-a optimized\""
chmod +x ../bin/linux/arm/lloops_arm-armv8.4-a_O3_tsv110
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/arm/lloops_arm-armv8.4-a_Ofast_tsv110 -Ofast -march=armv8.4-a -mtune=tsv110 -D options="\"arm armv8.4-a optimized\""
chmod +x ../bin/linux/arm/lloops_arm-armv8.4-a_Ofast_tsv110

echo -e "Compile WhetstoneMP\n"

cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/whetstone_mp_arm-armv6_O2 -O2 -march=armv6 -D options="\"arm armv6 optimized\""
chmod +x ../bin/linux/arm/whetstone_mp_arm-armv6_O2
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/whetstone_mp_arm-armv6_O3 -O3 -march=armv6 -D options="\"arm armv6 optimized\""
chmod +x ../bin/linux/arm/whetstone_mp_arm-armv6_O3
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/whetstone_mp_arm-armv7_O2 -O2 -march=armv7 -D options="\"arm armv7 optimized\""
chmod +x ../bin/linux/arm/whetstone_mp_arm-armv7_O2
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/whetstone_mp_arm-armv7_O3 -O3 -march=armv7 -D options="\"arm armv7 optimized\""
chmod +x ../bin/linux/arm/whetstone_mp_arm-armv7_O3
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/whetstone_mp_arm-armv7-a_O2 -O2 -march=armv7-a -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/whetstone_mp_arm-armv7-a_O2
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/whetstone_mp_arm-armv7-a_ffast_O2 -O2 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/whetstone_mp_arm-armv7-a_ffast_O2
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/whetstone_mp_arm-armv7-a_ffast_O2_cortex-a9 -O2 -mtune=cortex-a9 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/whetstone_mp_arm-armv7-a_ffast_O2_cortex-a9
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/whetstone_mp_arm-armv7-a_ffast_O2_cortex-a7 -O2 -mtune=cortex-a7 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/whetstone_mp_arm-armv7-a_ffast_O2_cortex-a7
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/whetstone_mp_arm-armv7-a_O3 -O3 -march=armv7-a -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/whetstone_mp_arm-armv7-a_O3
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/whetstone_mp_arm-armv7-a_ffast_O3 -O3 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/whetstone_mp_arm-armv7-a_ffast_O3
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/whetstone_mp_arm-armv7-a_ffast_O3_cortex-a9 -O3 -mtune=cortex-a9 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/whetstone_mp_arm-armv7-a_ffast_O3_cortex-a9
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/whetstone_mp_arm-armv7-a_ffast_O3_cortex-a7 -O3 -mtune=cortex-a7 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/whetstone_mp_arm-armv7-a_ffast_O3_cortex-a7
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/whetstone_mp_arm-armv8-a_O2 -O2 -march=armv8-a -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/whetstone_mp_arm-armv8-a_O2
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/whetstone_mp_arm-armv8-a_ffast_O2 -O2 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/whetstone_mp_arm-armv8-a_ffast_O2
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/whetstone_mp_arm-armv8-a_ffast_O2_cortex-a53 -O2 -mtune=cortex-a53 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/whetstone_mp_arm-armv8-a_ffast_O2_cortex-a53
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/whetstone_mp_arm-armv8-a_ffast_O2_cortex-a57 -O2 -mtune=cortex-a57 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/whetstone_mp_arm-armv8-a_ffast_O2_cortex-a57
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/whetstone_mp_arm-armv8-a_O3 -O3 -march=armv8-a -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/whetstone_mp_arm-armv8-a_O3
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/whetstone_mp_arm-armv8-a_ffast_O3 -O3 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/whetstone_mp_arm-armv8-a_ffast_O3
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/whetstone_mp_arm-armv8-a_ffast_O3_cortex-a53 -O3 -mtune=cortex-a53 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/whetstone_mp_arm-armv8-a_ffast_O3_cortex-a53
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/whetstone_mp_arm-armv8-a_ffast_O3_cortex-a57 -O3 -mtune=cortex-a57 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/whetstone_mp_arm-armv8-a_ffast_O3_cortex-a57
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/whetstone_mp_arm-armv8.1-a_O2 -O2 -march=armv8.1-a -D options="\"arm armv8.1-a optimized\""
chmod +x ../bin/linux/arm/whetstone_mp_arm-armv8.1-a_O2
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/whetstone_mp_arm-armv8.1-a_O3 -O3 -march=armv8.1-a -D options="\"arm armv8.1-a optimized\""
chmod +x ../bin/linux/arm/whetstone_mp_arm-armv8.1-a_O3
# Huawei Taishan
cc mp/whetsmp.c mp/cpuidc64.c -pthread -lm -lrt -o ../bin/linux/arm/whetstone_mp_arm-armv8.4-a_O2_tsv110 -O2 -march=armv8.4-a -mtune=tsv110 -D options="\"arm armv8.4-a optimized\""
chmod +x ../bin/linux/arm/whetstone_mp_arm-armv8.4-a_O2_tsv110
cc mp/whetsmp.c mp/cpuidc64.c -pthread -lm -lrt -o ../bin/linux/arm/whetstone_mp_arm-armv8.4-a_O3_tsv110 -O3 -march=armv8.4-a -mtune=tsv110 -D options="\"arm armv8.4-a optimized\""
chmod +x ../bin/linux/arm/whetstone_mp_arm-armv8.4-a_O3_tsv110
cc mp/whetsmp.c mp/cpuidc64.c -pthread -lm -lrt -o ../bin/linux/arm/whetstone_mp_arm-armv8.4-a_Ofast_tsv110 -Ofast -march=armv8.4-a -mtune=tsv110 -D options="\"arm armv8.4-a optimized\""
chmod +x ../bin/linux/arm/whetstone_mp_arm-armv8.4-a_Ofast_tsv110

echo -e "Compile MPMFlops\n"

cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/mpmflops_arm-armv6_O2 -O2 -march=armv6 -D options="\"arm armv6 optimized\""
chmod +x ../bin/linux/arm/mpmflops_arm-armv6_O2
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/mpmflops_arm-armv6_O3 -O3 -march=armv6 -D options="\"arm armv6 optimized\""
chmod +x ../bin/linux/arm/mpmflops_arm-armv6_O3
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/mpmflops_arm-armv7_O2 -O2 -march=armv7 -D options="\"arm armv7 optimized\""
chmod +x ../bin/linux/arm/mpmflops_arm-armv7_O2
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/mpmflops_arm-armv7_O3 -O3 -march=armv7 -D options="\"arm armv7 optimized\""
chmod +x ../bin/linux/arm/mpmflops_arm-armv7_O3
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/mpmflops_arm-armv7-a_O2 -O2 -march=armv7-a -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/mpmflops_arm-armv7-a_O2
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/mpmflops_arm-armv7-a_ffast_O2 -O2 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/mpmflops_arm-armv7-a_ffast_O2
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/mpmflops_arm-armv7-a_ffast_O2_cortex-a9 -O2 -mtune=cortex-a9 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/mpmflops_arm-armv7-a_ffast_O2_cortex-a9
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/mpmflops_arm-armv7-a_ffast_O2_cortex-a7 -O2 -mtune=cortex-a7 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/mpmflops_arm-armv7-a_ffast_O2_cortex-a7
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/mpmflops_arm-armv7-a_O3 -O3 -march=armv7-a -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/mpmflops_arm-armv7-a_O3
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/mpmflops_arm-armv7-a_ffast_O3 -O3 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/mpmflops_arm-armv7-a_ffast_O3
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/mpmflops_arm-armv7-a_ffast_O3_cortex-a9 -O3 -mtune=cortex-a9 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/mpmflops_arm-armv7-a_ffast_O3_cortex-a9
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/mpmflops_arm-armv7-a_ffast_O3_cortex-a7 -O3 -mtune=cortex-a7 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/mpmflops_arm-armv7-a_ffast_O3_cortex-a7
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/mpmflops_arm-armv8-a_O2 -O2 -march=armv8-a -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/mpmflops_arm-armv8-a_O2
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/mpmflops_arm-armv8-a_ffast_O2 -O2 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/mpmflops_arm-armv8-a_ffast_O2
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/mpmflops_arm-armv8-a_ffast_O2_cortex-a53 -O2 -mtune=cortex-a53 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/mpmflops_arm-armv8-a_ffast_O2_cortex-a53
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/mpmflops_arm-armv8-a_ffast_O2_cortex-a57 -O2 -mtune=cortex-a57 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/mpmflops_arm-armv8-a_ffast_O2_cortex-a57
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/mpmflops_arm-armv8-a_O3 -O3 -march=armv8-a -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/mpmflops_arm-armv8-a_O3
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/mpmflops_arm-armv8-a_ffast_O3 -O3 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/mpmflops_arm-armv8-a_ffast_O3
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/mpmflops_arm-armv8-a_ffast_O3_cortex-a53 -O3 -mtune=cortex-a53 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/mpmflops_arm-armv8-a_ffast_O3_cortex-a53
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/mpmflops_arm-armv8-a_ffast_O3_cortex-a57 -O3 -mtune=cortex-a57 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/mpmflops_arm-armv8-a_ffast_O3_cortex-a57
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/mpmflops_arm-armv8.1-a_O2 -O2 -march=armv8.1-a -D options="\"arm armv8.1-a optimized\""
chmod +x ../bin/linux/arm/mpmflops_arm-armv8.1-a_O2
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/arm/mpmflops_arm-armv8.1-a_O3 -O3 -march=armv8.1-a -D options="\"arm armv8.1-a optimized\""
chmod +x ../bin/linux/arm/mpmflops_arm-armv8.1-a_O3
# Huawei Taishan
cc mp/mpmflops.c mp/cpuidc64.c -pthread -lm -lrt -o ../bin/linux/arm/mpmflops_arm-armv8.4-a_O2_tsv110 -O2 -march=armv8.4-a -mtune=tsv110 -D options="\"arm armv8.4-a optimized\""
chmod +x ../bin/linux/arm/mpmflops_arm-armv8.4-a_O2_tsv110
cc mp/mpmflops.c mp/cpuidc64.c -pthread -lm -lrt -o ../bin/linux/arm/mpmflops_arm-armv8.4-a_O3_tsv110 -O3 -march=armv8.4-a -mtune=tsv110 -D options="\"arm armv8.4-a optimized\""
chmod +x ../bin/linux/arm/mpmflops_arm-armv8.4-a_O3_tsv110
cc mp/mpmflops.c mp/cpuidc64.c -pthread -lm -lrt -o ../bin/linux/arm/mpmflops_arm-armv8.4-a_Ofast_tsv110 -Ofast -march=armv8.4-a -mtune=tsv110 -D options="\"arm armv8.4-a optimized\""
chmod +x ../bin/linux/arm/mpmflops_arm-armv8.4-a_Ofast_tsv110

echo -e "Compile busspeedIL\n"

cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/busspeedIL_arm-armv6_O2 -O2 -march=armv6 -D options="\"arm armv6 optimized\""
chmod +x ../bin/linux/arm/busspeedIL_arm-armv6_O2
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/busspeedIL_arm-armv6_O3 -O3 -march=armv6 -D options="\"arm armv6 optimized\""
chmod +x ../bin/linux/arm/busspeedIL_arm-armv6_O3
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/busspeedIL_arm-armv7_O2 -O2 -march=armv7 -D options="\"arm armv7 optimized\""
chmod +x ../bin/linux/arm/busspeedIL_arm-armv7_O2
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/busspeedIL_arm-armv7_O3 -O3 -march=armv7 -D options="\"arm armv7 optimized\""
chmod +x ../bin/linux/arm/busspeedIL_arm-armv7_O3
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/busspeedIL_arm-armv7-a_O2 -O2 -march=armv7-a -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/busspeedIL_arm-armv7-a_O2
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/busspeedIL_arm-armv7-a_ffast_O2 -O2 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/busspeedIL_arm-armv7-a_ffast_O2
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/busspeedIL_arm-armv7-a_ffast_O2_cortex-a9 -O2 -mtune=cortex-a9 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/busspeedIL_arm-armv7-a_ffast_O2_cortex-a9
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/busspeedIL_arm-armv7-a_ffast_O2_cortex-a7 -O2 -mtune=cortex-a7 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/busspeedIL_arm-armv7-a_ffast_O2_cortex-a7
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/busspeedIL_arm-armv7-a_O3 -O3 -march=armv7-a -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/busspeedIL_arm-armv7-a_O3
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/busspeedIL_arm-armv7-a_ffast_O3 -O3 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/busspeedIL_arm-armv7-a_ffast_O3
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/busspeedIL_arm-armv7-a_ffast_O3_cortex-a9 -O3 -mtune=cortex-a9 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/busspeedIL_arm-armv7-a_ffast_O3_cortex-a9
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/busspeedIL_arm-armv7-a_ffast_O3_cortex-a7 -O3 -mtune=cortex-a7 -mfpu=neon -D options="\"arm armv7-a optimized\""
chmod +x ../bin/linux/arm/busspeedIL_arm-armv7-a_ffast_O3_cortex-a7
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/busspeedIL_arm-armv8-a_O2 -O2 -march=armv8-a -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/busspeedIL_arm-armv8-a_O2
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/busspeedIL_arm-armv8-a_ffast_O2 -O2 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/busspeedIL_arm-armv8-a_ffast_O2
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/busspeedIL_arm-armv8-a_ffast_O2_cortex-a53 -O2 -mtune=cortex-a53 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/busspeedIL_arm-armv8-a_ffast_O2_cortex-a53
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/busspeedIL_arm-armv8-a_ffast_O2_cortex-a57 -O2 -mtune=cortex-a57 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/busspeedIL_arm-armv8-a_ffast_O2_cortex-a57
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/busspeedIL_arm-armv8-a_O3 -O3 -march=armv8-a -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/busspeedIL_arm-armv8-a_O3
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/busspeedIL_arm-armv8-a_ffast_O3 -O3 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/busspeedIL_arm-armv8-a_ffast_O3
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/busspeedIL_arm-armv8-a_ffast_O3_cortex-a53 -O3 -mtune=cortex-a53 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/busspeedIL_arm-armv8-a_ffast_O3_cortex-a53
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/busspeedIL_arm-armv8-a_ffast_O3_cortex-a57 -O3 -mtune=cortex-a57 -mfpu=neon -D options="\"arm armv8-a optimized\""
chmod +x ../bin/linux/arm/busspeedIL_arm-armv8-a_ffast_O3_cortex-a57
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/busspeedIL_arm-armv8.1-a_O2 -O2 -march=armv8.1-a -D options="\"arm armv8.1-a optimized\""
chmod +x ../bin/linux/arm/busspeedIL_arm-armv8.1-a_O2
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/busspeedIL_arm-armv8.1-a_O3 -O3 -march=armv8.1-a -D options="\"arm armv8.1-a optimized\""
chmod +x ../bin/linux/arm/busspeedIL_arm-armv8.1-a_O3
# Huawei Taishan
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/busspeedIL_arm-armv8.4-a_O2_tsv110 -O2 -march=armv8.4-a -mtune=tsv110 -D options="\"arm armv8.4-a optimized\""
chmod +x ../bin/linux/arm/busspeedIL_arm-armv8.4-a_O2_tsv110
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/busspeedIL_arm-armv8.4-a_O3_tsv110 -O3 -march=armv8.4-a -mtune=tsv110 -D options="\"arm armv8.4-a optimized\""
chmod +x ../bin/linux/arm/busspeedIL_arm-armv8.4-a_O3_tsv110
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/arm/busspeedIL_arm-armv8.4-a_Ofast_tsv110 -Ofast -march=armv8.4-a -mtune=tsv110 -D options="\"arm armv8.4-a optimized\""
chmod +x ../bin/linux/arm/busspeedIL_arm-armv8.4-a_Ofast_tsv110
