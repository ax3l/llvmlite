#!/bin/bash
# Use this to make the llvmdev packages that are manylinux2014 compatible
srcdir=$( cd "$(dirname $0)/../.."  && pwd )
echo "srcdir=$srcdir"

echo "MINICONDA_FILE=$MINICONDA_FILE"
echo "docker run --rm -v $srcdir:/root/llvmlite quay.io/pypa/manylinux2014_${ARCH} ${PRECMD} /root/llvmlite/buildscripts/manylinux2014/$1 ${MINICONDA_FILE} $2"
docker run --rm -v $srcdir:/root/llvmlite quay.io/pypa/manylinux2014_${ARCH} ${PRECMD} /root/llvmlite/buildscripts/manylinux2014/$1 ${MINICONDA_FILE} $2

