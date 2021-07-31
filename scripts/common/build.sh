#!/bin/bash
set -Ceu

SCRIPT_DIR=$(cd $(dirname $0);pwd)

SRC_DIR=$(cd $SCRIPT_DIR/../../;pwd)
OUT_DIR=$SRC_DIR/dist

print_and_exec () {
  echo -e "\n--------\n> $*"
  $*
}

print_and_exec pip install build
print_and_exec python -m build --outdir $OUT_DIR $SRC_DIR

