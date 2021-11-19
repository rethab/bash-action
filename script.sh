#!/bin/bash

set -e

command="$1"
who="$2"

if [[ $command == "greet" ]]; then
  echo "hello, $who"
elif [[ $command == "error" ]]; then
  echo "ERROR: script.sh, line 11: this is not so good"
  exit 1
fi
