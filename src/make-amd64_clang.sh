# Include common functions and operations
source common.sh

targetToFlags["x86-64"]="-march=znver2"
targetToFPU["x86-64"]=""

for BINARY in "${!binaryCompileOptions[@]}"; do
    for ARCH in "${!targetToFlags[@]}"; do
        compile_binary ${ARCH} ${BINARY} amd64 clang
    done
done
