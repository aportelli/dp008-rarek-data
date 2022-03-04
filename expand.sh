#!/usr/bin/env bash

set -uoe pipefail

if (( $# != 1 )); then
    echo "usage: `basename $0` <directory>" 1>&2
    exit 1
fi
fulldir=$1

cwd=$(pwd)
fulldir="data/result/${fulldir}"
dir="$(basename ${fulldir})"
updir="${fulldir//${dir}/}"
ar_stem="${dir}.tar."
echo "-- expanding '${ar_stem}/*'"
cd ${updir}
cat $(find archive -name "${ar_stem}*" | sort) | tar -xvf -
cd ${cwd}
