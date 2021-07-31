#!/bin/bash
set -Ceu

SCRIPT_DIR=$(cd $(dirname $0);pwd)

SRC_DIR=$(cd $SCRIPT_DIR/../../;pwd)
TESTS_DIR=$(cd $SCRIPT_DIR/../../;pwd)/tests

print_and_exec () {
  echo -e "\n--------\n> $*"
  $*
}

print_and_exec pip install --upgrade $SRC_DIR pytest
print_and_exec pytest $TESTS_DIR

