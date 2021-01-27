#!/usr/bin/env bash

main () {
  s=$1
  l=${#s}
  for (( i=$l-1; i>=0; i-- ))
  do
    r="$r${s:$i:1}"
  done
  echo $r
}

main $1
