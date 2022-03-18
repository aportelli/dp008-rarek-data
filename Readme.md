# Lattice dataset for the paper "Simulating rare kaon decays using domain wall lattice QCD with physical light quark masses"
[![License: CC BY 4.0](https://img.shields.io/badge/License-CC_BY_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)

This repository contains the tool and access credentials to download the correlation functions produced and analysed in [arXiv:2202.08795](https://arxiv.org/abs/2202.08795). This dataset was produced by the measurement program posted [here](https://github.com/aportelli/dp008-rarek-code) based on the [Grid](https://github.com/paboyle/Grid) and [Hadrons](https://github.com/aportelli/Hadrons) libraries.

The dataset is hosted on the [Storj](https://www.storj.io/) decentralised cloud storage. This repository contains a set of automatised scripts to download and unpack the dataset on a UNIX OS and does not require any non-standard dependency to be installed.

## Quick start
```bash
./bootstrap.sh             # sets up an embedded rclone
./download.sh              # warning: downloads 260 GB of data
less data/README.txt       # read data description
./expand.sh k000_p100/2pt  # example: expand 2-point functions
                           # cf. possible paths in README.txt
```

## Detailed instructions
### Using embedded Rclone (self-contained, the simplest)
To download the dataset, start by bootstrapping a local, dedicated [Rclone](https://rclone.org/) installation by executing `./bootstrap.sh` without arguments. This step is necessary even if you have Rclone installed, this script sets up an Rclone installation with credential to Storj DCS confined within the script directory, to avoid interfering with a system-wide Rclone installation.

Once Rclone is setup, execute `./download.sh` without arguments to download the whole dataset. You can also download a partial dataset by specifying the desired subdirectory to download as an argument (e.g. `k000_p100/3pt/VC3`, see `README.txt`). *If downloading the dataset on a personal computer, please note that the total dataset has a size of 260 GB, and as much space is required to unarchive it.*

Once the dataset is downloaded, it can be unarchived using the command `./expand.sh`, with the subdirectory to expand as an argument . Once expanded, all the files of the form `*.tar.*` can be safely removed.

### Using S3
If you are used to interact with S3 object storage, you can download the dataset using the S3 credentials below. These credentials only allow read-only access to the storage. One advantage over the solution above is that it allows do download only parts of the dataset.

Access key `jv3wzylubulrnrtynyjwj5jchxja`  
Secret key `jy4jyvi4nrzn3mz5lxi5fcui5ipvxedrsn2hnmozhvgkkwgq2j2fk`  
S3 endpoint `https://gateway.eu1.storjshare.io`    

## Issues
If you encounter an issue using this dataset, please submit issues to this repository, or contact directly the authors of [arXiv:2202.08795](https://arxiv.org/abs/2202.08795).
