#!/usr/bin/env bash

set -eu

path_to_include="$(dirname $0)/../include"
dasm_version=$(dasm | grep -Po "(?<=DASM )(\d|\.)+(?=$)")

for file in 'macro.h' 'vcs.h'; do
  if [ -f "${path_to_include}/${file}" ]; then
    continue
  fi

  curl \
    --silent \
    --output "${path_to_include}/${file}" \
    --location "https://raw.githubusercontent.com/dasm-assembler/dasm/${dasm_version}/machines/atari2600/${file}"
done
