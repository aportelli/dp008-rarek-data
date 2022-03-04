#!/usr/bin/env bash

cpus=$(nproc --all || echo 4)
PATH="$(pwd -P)/bin:${PATH}"
rclone -vv --stats 1000ms --stats-one-line --config rclone-config --transfers ${cpus} copy storj-dp008-rarek-public:dp008-rarek data
