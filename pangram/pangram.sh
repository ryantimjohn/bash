#!/usr/bin/env bash

main () {
  s=${1^^}
  declare -A letters
  for (( i = 0; i < ${#s}; i++ )); do
    l=${s:i:1}
    [[ "$l" =~ [A-Z] ]] && letters["$l"]=true
  done
  (( ${#letters[@]} == 26 )) && echo true || echo false
}

main "$@"
