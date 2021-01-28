#!/usr/bin/env bash

main () {
  length=${#1}
  sum=0
  for (( i = 0; i < $length; i++ )); do
    d="${1:$i:1}"
    ((sum+=$(($d**$length))))
  done
  [[ "$sum" == "$1" ]] && output="true" || output="false"
  echo "$output"
}

main "$@"

