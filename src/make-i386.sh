# Include common functions and operations
source common.sh

targetToFlags["i386"]="-march=i386"
targetToFPU["i386"]=""


for BINARY in "${!binaryCompileOptions[@]}"; do
    for ARCH in "${!targetToFlags[@]}"; do
        compile_binary ${ARCH} ${BINARY} i386
    done
done
