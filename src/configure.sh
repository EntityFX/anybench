#!/bin/bash
ARCH_NAME='e2k'

ARCHS=('v3' 'v4' 'v5' )
OPTS=('O2' 'O3' 'O4')
declare -A TUNES=([v4_0]=elbrus-8c [v4_1]=elbrus-1c+ [v5_0]=elbrus-8c2)
declare -A OPTIMIZATION_FLAGS=(['v4']='-ffast -fwhole' ['v5']='-ffast -fwhole')

BINARY_PREFIX="_${ARCH_NAME}_elbrus-"
BIN_PATH="../bin/linux/"
BUILD_PATH="${BIN_PATH}$ARCH_NAME/"
RESULTS_PATH="results/"
OPTIMIZED_TEXT_SUFFIX='ffast'
COMPILER='cc'
TUNE_PARAM='-mtune'
SCRIPT_NAME="make-${ARCH_NAME}.sh"
RUN_SCRIPT_NAME="run-${ARCH_NAME}.sh"

configure_compile_section () {
    local tune_option=""
    local cmd=""

    echo -e "\necho -e \"$1\\\n\"\n"

    for arch in "${ARCHS[@]}"
    do
        for opt in "${OPTS[@]}"
        do
            echo $"$COMPILER $3 -o $BUILD_PATH$2$BINARY_PREFIX${arch}_${opt} -$opt -D options=\"\\\"${ARCH_NAME} elbrus-$arch optimized\\\"\"" | tee /dev/fd/3  
            echo "chmod +x $BUILD_PATH$2$BINARY_PREFIX${arch}_${opt}"
            if [ ${OPTIMIZATION_FLAGS[$arch]+_} ]; then
                echo $"$COMPILER $3 -o $BUILD_PATH$2${BINARY_PREFIX}${arch}_${OPTIMIZED_TEXT_SUFFIX}_${opt} -$opt ${OPTIMIZATION_FLAGS[$arch]} -D options=\"\\\"${ARCH_NAME} elbrus-$arch optimized\\\"\""  
                echo "chmod +x $BUILD_PATH$2${BINARY_PREFIX}${arch}_${OPTIMIZED_TEXT_SUFFIX}_${opt}"
            fi

            for flag_index in 0 1 2
            do
                if [ ${TUNES[${arch}_${flag_index}]+_} ]; then
                    tune_option=${TUNES[${arch}_${flag_index}]}
                    echo $"$COMPILER $3 -o $BUILD_PATH$2${BINARY_PREFIX}${arch}_${OPTIMIZED_TEXT_SUFFIX}_${opt}_${tune_option} -$opt ${TUNE_PARAM}=${tune_option} ${OPTIMIZATION_FLAGS[$arch]} -D options=\"\\\"${ARCH_NAME} elbrus-$arch optimized\\\"\""  
                    echo "chmod +x $BUILD_PATH$2${BINARY_PREFIX}${arch}_${OPTIMIZED_TEXT_SUFFIX}_${opt}_${tune_option}"
                fi
            done
        done
    done
}

configure_run () {
    local cmd=""

    echo -e "\necho -e \"$1\\\n\"\n"

    for arch in "${ARCHS[@]}"
    do
        for opt in "${OPTS[@]}"
        do
            echo $"$BUILD_PATH$2$BINARY_PREFIX${arch}_${opt} n 2>&1 > ../${RESULTS_PATH}$ARCH_NAME/$2$BINARY_PREFIX${arch}_${opt}.stdout_stderr.log"

            if [ ${OPTIMIZATION_FLAGS[$arch]+_} ]; then
                echo $"$BUILD_PATH$2${BINARY_PREFIX}${arch}_${OPTIMIZED_TEXT_SUFFIX}_${opt} n 2>&1 > ../${RESULTS_PATH}$ARCH_NAME/$2${BINARY_PREFIX}${arch}_${OPTIMIZED_TEXT_SUFFIX}_${opt}.stdout_stderr.log"  
            fi

            for flag_index in 0 1 2
            do
                if [ ${TUNES[${arch}_${flag_index}]+_} ]; then
                    tune_option=${TUNES[${arch}_${flag_index}]}
                    echo $"$BUILD_PATH$2${BINARY_PREFIX}${arch}_${OPTIMIZED_TEXT_SUFFIX}_${opt}_${tune_option} n 2>&1 > ../${RESULTS_PATH}$ARCH_NAME/$2${BINARY_PREFIX}${arch}_${OPTIMIZED_TEXT_SUFFIX}_${opt}_${tune_option}.stdout_stderr.log"  
                fi
            done
        done
    done
}

rm $SCRIPT_NAME
exec 3>&1 1>>${SCRIPT_NAME} 2>&1

echo -e "#!/bin/bash"

echo -e "\n"
echo -e "mkdir \"../${BIN_PATH}\""
echo -e "mkdir \"../${BIN_PATH}$ARCH_NAME\""

configure_compile_section "Compile Dhrystone v 2.1" "dhrystone" 'dhry_1.c dhry_2.c cpuidc.c'
configure_compile_section "Compile Whetstone" "whetstone" "whets.c cpuidc.c -lm -lrt"
configure_compile_section "Compile Memspeed" "memspeed" "memspeed.c cpuidc.c -lm -lrt"
configure_compile_section "Compile Linpack" "linpack" "linpack.c cpuidc.c -lm -lrt" 
configure_compile_section "Compile Lloops" "lloops" "lloops.c cpuidc.c -lm -lrt" 
configure_compile_section "Compile WhetstoneMP" "whetstone_mp" "mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt" 
configure_compile_section "Compile MPMFlops" "mpmflops" "mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt" 
configure_compile_section "Compile busspeedIL" "busspeedIL" "busspeed.c cpuidc.c -lm -lrt" 

echo -e "\n"

chmod +x $SCRIPT_NAME


rm $RUN_SCRIPT_NAME
exec 3>&1 1>>${RUN_SCRIPT_NAME} 2>&1

echo -e "#!/bin/bash"

echo -e "\n"
echo -e "mkdir \"../${RESULTS_PATH}\""
echo -e "mkdir \"../${RESULTS_PATH}$ARCH_NAME\""

configure_run "Run Dhrystone v 2.1" "dhrystone"
configure_run "Run Whetstone v 2.1" "whetstone"
configure_run "Run Memspeed v 2.1" "memspeed"
configure_run "Run Linpack v 2.1" "linpack"
configure_run "Run Lloops v 2.1" "lloops"
configure_run "Run WhetstoneMP v 2.1" "whetstone_mp"
configure_run "Run MPMFlops v 2.1" "mpmflops"
configure_run "Run busspeedIL" "busspeedIL"

chmod +x $RUN_SCRIPT_NAME