#!/usr/bin/env bash

set -uoe pipefail

# install rclone locally #######################################################
echo '-- download a local copy of rclone'

# determine architexture for rclone (from https://rclone.org/install.sh)
OS="$(uname)"
case $OS in
  Linux)
    OS='linux'
    ;;
  FreeBSD)
    OS='freebsd'
    ;;
  NetBSD)
    OS='netbsd'
    ;;
  OpenBSD)
    OS='openbsd'
    ;;  
  Darwin)
    OS='osx'
    ;;
  SunOS)
    OS='solaris'
    echo 'OS not supported'
    exit 1
    ;;
  *)
    echo 'OS not supported'
    exit 1
    ;;
esac
OS_type="$(uname -m)"
case "$OS_type" in
  x86_64|amd64)
    OS_type='amd64'
    ;;
  i?86|x86)
    OS_type='386'
    ;;
  aarch64|arm64)
    OS_type='arm64'
    ;;
  arm*)
    OS_type='arm'
    ;;
  *)
    echo 'OS type not supported'
    exit 1
    ;;
esac

# download and unzip
sha1='9009ac520214b6b4ce781c819a4e2b3d43dbd74a'

rclone_version='1.57.0'
rclone_zip="rclone-v${rclone_version}-${OS}-${OS_type}.zip"
curl -OfsS "https://downloads.rclone.org/v${rclone_version}/${rclone_zip}"
curl -s "https://downloads.rclone.org/v${rclone_version}/SHA1SUMS" | grep ${rclone_zip} > SHA1SUM
if [ ! ${sha1} = $(awk '{print $1}' SHA1SUM) ]; then
  echo "error: SHA1 checksum from rclone website does not match expected checksum" 1>&2
  exit 1
fi
sha1sum -c SHA1SUM
unzip ${rclone_zip}
mkdir -p bin
mv ${rclone_zip//.zip}/rclone bin/
PATH="$(pwd -P)/bin:${PATH}"
rm -rf ${rclone_zip} ${rclone_zip//.zip} SHA1SUM
