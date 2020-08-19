echo "prep miniconda"
cd /root
echo "URL=https://repo.anaconda.com/miniconda/$1"
curl https://repo.anaconda.com/miniconda/$1 > mini3.sh
bash mini3.sh -b -f
source /root/miniconda3/bin/activate root

cd /root/llvmlite/buildscripts/manylinux2014
./configure_conda.sh
