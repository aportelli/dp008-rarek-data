#!/usr/bin/env bash

cpus=$(nproc --all || echo 4)
PATH="$(pwd -P)/bin:${PATH}"

if (( $# == 0 )); then
  rclone -vv --stats 1000ms --stats-one-line --config rclone-config \
    --transfers ${cpus} copy storj-dp008-rarek-public:dp008-rarek data
else
  fulldir=$1
  dir="$(basename ${fulldir})"
  updir="${fulldir//${dir}/}"
  ardir=$(echo ${updir}/archive/ | sed -E 's:/+:/:g')
  rclone -vv --stats 1000ms --stats-one-line --config rclone-config \
    --include "${dir}.tar.*"                                        \
    --transfers ${cpus} copy storj-dp008-rarek-public:dp008-rarek/result/${ardir} data/result/${ardir}
fi
