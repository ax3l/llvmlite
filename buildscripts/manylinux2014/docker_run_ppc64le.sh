#!/bin/bash
export ARCH="ppc64le"
export PRECMD="/bin/bash"
export MINICONDA_FILE="Miniconda3-latest-Linux-ppc64le.sh"
cd $(dirname $0)
./docker_run.sh $1 $2
