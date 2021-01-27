#!/usr/bin/env bash



main () {
  (( $# == 0 )) && name="you" || name="$1"
  echo "One for ${name}, one for me."
}

main "$@"