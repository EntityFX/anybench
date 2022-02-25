#!/usr/bin/env

help() {
  echo "Usage: ${0} [--cc COMPILER] [--no-rebuild]"
  echo
  echo "  --cc COMPILER    - use compiler specified by that option, default: cc"
  echo "  --no-rebuild     - do not rebuild binaries, useful if you have unstable or slow device"
  exit 0
}

COMPILER=""
BINARY=""
DO_NOT_REBUILD="false"
is_cc=0
while (( "${#}" )); do
    ARG="${1}"
    case ${ARG} in
        "--cc")
            is_cc=1
        ;;
        "--no-rebuild")
          if [[ ${is_cc} == 1 ]]; then
              echo "You must specify compiler after '--cc' flag"
              exit 1
          fi
          DO_NOT_REBUILD="true"
        ;;
        "--help")
            help
        ;;
        *)
            if [[ ${is_cc} -eq 1 ]]; then
                COMPILER="${ARG}"
                is_cc=0
            else
                BINARY="${ARG}"
            fi
        ;;
    esac
    shift
done

COMPILER=${COMPILER:-cc}
echo "Using Compiler '${COMPILER}'"

main() {
    local arch=${1}
    if [[ ${#} -eq 1 ]]; then
        echo "Compiling only ${1}"
        BINARY="${1}"
        for ARCH in "${!targetToFlags[@]}"; do
            compile_binary ${ARCH} ${BINARY} ${arch} ${COMPILER}
        done
        exit 0
    fi

    for BINARY in "${!binaryCompileOptions[@]}"; do
        for ARCH in "${!targetToFlags[@]}"; do
            compile_binary ${ARCH} ${BINARY} ${arch} ${COMPILER}
        done
    done
}