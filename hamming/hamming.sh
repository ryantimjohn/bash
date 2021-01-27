#!/usr/bin/env bash

main () {
  arg_error="Usage: hamming.sh <string1> <string2>"
  len_error="left and right strands must be of equal length"

  [[ "$#" -ne 2 ]] && echo "$arg_error" && exit 1
  [[ "${#1}" -ne "${#2}" ]] && echo "$len_error" && exit 1

  dna1="$1"
  dna2="$2"
  o=0

  for (( i=0; i<${#dna1}; i++ )); do
    [ "${dna1:$i:1}" != "${dna2:$i:1}" ] && ((o+=1))
  done
  echo "$o"
}

main "$@"