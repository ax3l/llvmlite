#!/bin/bash
cd $(dirname $0)
source ./prepare_miniconda.sh $1

conda build /root/llvmlite/conda-recipes/llvmdev_manylinux2014 --output-folder=/root/llvmlite/docker_output
