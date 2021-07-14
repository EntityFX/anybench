# Include common functions and operations
source common.sh

targetToFlags["sparc64"]="-mcpu=v9"
dotToFPU["sparc64"]=""

for BINARY in "${!binaryCompileOptions[@]}"; do
	for ARCH in "${!targetToFlags[@]}"; do
        	compile_binary ${ARCH} ${BINARY} sparc64
	done
done
