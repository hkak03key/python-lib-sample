#!/bin/bash
set -Ceu

SCRIPT_DIR=$(cd $(dirname $0);pwd)

SRC_DIR=$SCRIPT_DIR
OUT_DIR=$SRC_DIR/dist

VENV_DIR=$SCRIPT_DIR/build/venv

print_and_exec () {
  echo -e "\n--------\n> $*"
  $*
}

print_and_exec python -m venv $VENV_DIR
print_and_exec source $VENV_DIR/bin/activate

print_and_exec pip install build
print_and_exec python -m build --outdir $OUT_DIR $SRC_DIR

