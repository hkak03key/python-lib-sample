#!/bin/bash
set -Ceu

SCRIPT_DIR=$(cd $(dirname $0);pwd)

VENV_DIR=$SCRIPT_DIR/venv

print_and_exec () {
  echo -e "\n--------\n> $*"
  $*
}

print_and_exec python -m venv $VENV_DIR
print_and_exec source $VENV_DIR/bin/activate

$SCRIPT_DIR/../common/$1.sh
