#!/bin/bash


BIN_PATH="../bin/linux/"
RESULTS_PATH="../results/"
OPTIMIZED_TEXT_SUFFIX='ffast'
TUNE_PARAM='-mtune'
ARCH_PARAM='-march'

configure_compile_section () {
    local tune_option=""
    local cmd=""
    local arch_name="$4"
    local _script_name="$5"

    echo -e "\necho -e \"$1\\\n\"\n" >> ${_script_name}

    for arch in "${M_ARCHS[@]}"
    do
        for opt in "${OPTS[@]}"
        do
            echo $"$COMPILER $3 -o $BUILD_PATH$2$BINARY_PREFIX${arch}_${opt} -$opt ${ARCH_PARAM}=${arch} -D options=\"\\\"${arch_name} $arch optimized\\\"\"" >> ${_script_name}
            echo "chmod +x $BUILD_PATH$2$BINARY_PREFIX${arch}_${opt}" >> ${_script_name}
            if [ ${OPTIMIZATION_FLAGS[$arch]+_} ]; then
                echo $"$COMPILER $3 -o $BUILD_PATH$2${BINARY_PREFIX}${arch}_${OPTIMIZED_TEXT_SUFFIX}_${opt} -$opt ${OPTIMIZATION_FLAGS[$arch]} -D options=\"\\\"${arch_name} $arch optimized\\\"\"" >> ${_script_name} 
                echo "chmod +x $BUILD_PATH$2${BINARY_PREFIX}${arch}_${OPTIMIZED_TEXT_SUFFIX}_${opt}" >> ${_script_name}
            fi

            for flag_index in 0 1 2
            do
                if [ ${TUNES[${arch}_${flag_index}]+_} ]; then
                    tune_option=${TUNES[${arch}_${flag_index}]}
                    echo $"$COMPILER $3 -o $BUILD_PATH$2${BINARY_PREFIX}${arch}_${OPTIMIZED_TEXT_SUFFIX}_${opt}_${tune_option} -$opt ${TUNE_PARAM}=${tune_option} ${OPTIMIZATION_FLAGS[$arch]} -D options=\"\\\"${arch_name} $arch optimized\\\"\"" >> ${_script_name}  
                    echo "chmod +x $BUILD_PATH$2${BINARY_PREFIX}${arch}_${OPTIMIZED_TEXT_SUFFIX}_${opt}_${tune_option}" >> ${_script_name}
                fi
            done
        done
    done
}

configure_run () {
    local cmd=""
    local arch_name="$3"
    local _script_name="$4"

    echo -e "\necho -e \"$1\\\n\"\n" >> ${_script_name}

    for arch in "${M_ARCHS[@]}"
    do
        for opt in "${OPTS[@]}"
        do
            echo $"$BUILD_PATH$2$BINARY_PREFIX${arch}_${opt} 2>&1 > ${RESULTS_PATH}${arch_name}/$2$BINARY_PREFIX${arch}_${opt}.stdout_stderr.log" >> ${_script_name}
            if [ ${OPTIMIZATION_FLAGS[${arch}]+_} ]; then
                echo $"$BUILD_PATH$2${BINARY_PREFIX}${arch}_${OPTIMIZED_TEXT_SUFFIX}_${opt} 2>&1 > ${RESULTS_PATH}${arch_name}/$2${BINARY_PREFIX}${arch}_${OPTIMIZED_TEXT_SUFFIX}_${opt}.stdout_stderr.log" >> ${_script_name}  
            fi

            for flag_index in 0 1 2
            do
                if [ ${TUNES[${arch}_${flag_index}]+_} ]; then
                    tune_option=${TUNES[${arch}_${flag_index}]}
                    echo $"$BUILD_PATH$2${BINARY_PREFIX}${arch}_${OPTIMIZED_TEXT_SUFFIX}_${opt}_${tune_option} 2>&1 > ${RESULTS_PATH}${arch_name}/$2${BINARY_PREFIX}${arch}_${OPTIMIZED_TEXT_SUFFIX}_${opt}_${tune_option}.stdout_stderr.log" >> ${_script_name}  
                fi
            done
        done
    done
}

configure () {
    local _arch=$1

    BUILD_PATH="${BIN_PATH}${_arch}/"
    BINARY_PREFIX="_${_arch}-"
    SCRIPT_NAME="make-scimark2-${_arch}.sh"
    RUN_SCRIPT_NAME="run-scimark2-${_arch}.sh"

    rm $SCRIPT_NAME

    echo -e "#!/bin/bash" >> ${SCRIPT_NAME}

    echo -e "\n"
    echo -e "mkdir \"${BIN_PATH}\"" >> ${SCRIPT_NAME}
    echo -e "mkdir \"${BIN_PATH}${_arch}\"" >> ${SCRIPT_NAME}

    configure_compile_section "Compile Scimark2" "scimark2" '-Iscimark2 scimark2/*.c -lm' $_arch ${SCRIPT_NAME}
    echo -e "\n" >> ${SCRIPT_NAME}

    chmod +x $SCRIPT_NAME


    rm $RUN_SCRIPT_NAME

    echo -e "#!/bin/bash" >> ${RUN_SCRIPT_NAME}

    echo -e "\n"
    echo -e "mkdir \"${RESULTS_PATH}\"" >> ${RUN_SCRIPT_NAME}
    echo -e "mkdir \"${RESULTS_PATH}${_arch}\"" >> ${RUN_SCRIPT_NAME}

    configure_run "Run Scimark2" "scimark2" $_arch $RUN_SCRIPT_NAME

    chmod +x $RUN_SCRIPT_NAME
}


M_ARCHS=('elbrus-v3' 'elbrus-v4' 'elbrus-v5' )
OPTS=('O2' 'O3' 'O4')
declare -A TUNES=([elbrus-v4_0]=elbrus-8c [elbrus-v4_1]=elbrus-1c+ [elbrus-v5_0]=elbrus-8c2)
declare -A OPTIMIZATION_FLAGS=(['elbrus-v4']='-ffast -fwhole' ['elbrus-v5']='-ffast -fwhole')
COMPILER='cc'
configure "e2k"

M_ARCHS=('x86-64')
OPTS=('O3' 'O4' 'Ofast')
declare -A TUNES=([0]=0)
declare -A OPTIMIZATION_FLAGS=([0]=0)
COMPILER='cc'
configure "amd64"

M_ARCHS=('armv6' 'armv7' 'armv7-a' 'armv8-a' 'armv8.1-a')
OPTS=('O2' 'O3')
declare -A TUNES=(['armv7-a_0']='cortex-a9' ['armv7-a_1']='cortex-a7' ['armv8-a_0']='cortex-a53' ['armv8-a_1']='cortex-a57')
declare -A OPTIMIZATION_FLAGS=(['armv7-a']='-mfpu=neon' ['armv8-a']='-mfpu=neon')
COMPILER='cc'
configure "arm"


M_ARCHS=('x86-64')
OPTS=('O2' 'O3')
declare -A TUNES=([0]=0)
declare -A OPTIMIZATION_FLAGS=([0]=0)
COMPILER='clang'
configure "amd64_clang"

M_ARCHS=('i386' 'i686')
OPTS=('O2' 'O3')
declare -A TUNES=([0]=0)
declare -A OPTIMIZATION_FLAGS=([0]=0)
COMPILER='gcc'
configure "i386"



M_ARCHS=('powerpc64' 'native')
OPTS=('O2' 'O3')
declare -A TUNES=([0]=0)
declare -A OPTIMIZATION_FLAGS=([0]=0)
COMPILER='gcc'
configure "powerpc64"

BIN_PATH="../bin/mac/"
M_ARCHS=('powerpc')
OPTS=('O2' 'O3')
ARCH_PARAM='-mcpu'
declare -A TUNES=([0]=0)
declare -A OPTIMIZATION_FLAGS=([0]=0)
COMPILER='gcc'
configure "powerpc_mac"

