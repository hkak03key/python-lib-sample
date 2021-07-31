#!/bin/bash
set -Ceu

SCRIPT_DIR=$(cd $(dirname $0);pwd)

SRC_DIR=$SCRIPT_DIR
TESTS_DIR=$SCRIPT_DIR/tests
VENV_DIR=$TESTS_DIR/venv

print_and_exec () {
  echo -e "\n--------\n> $*"
  $*
}

print_and_exec python -m venv $VENV_DIR
print_and_exec source $VENV_DIR/bin/activate

print_and_exec pip install --upgrade $SRC_DIR pytest
print_and_exec pytest $TESTS_DIR

