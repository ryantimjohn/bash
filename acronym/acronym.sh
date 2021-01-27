#!/usr/bin/env bash

main () {
  strip_underscore_apostrophe="${1//[\'\_]/}"
  words="${strip_underscore_apostrophe//[^a-zA-z]/ }"
  acronym=""
  for word in $words; do
    acronym+=${word:0:1}
  done
  echo ${acronym^^}
}

main "$@"
