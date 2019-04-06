# rm -r /opt/conda/lib/python3.6/site-packages/lightgbm
git clone --recursive https://github.com/Microsoft/LightGBM

sudo apt-get install -y -qq libboost-all-dev

cd LightGBM
rm -r build
mkdir build
cd build
cmake -DUSE_GPU=1 -DOpenCL_LIBRARY=/usr/local/cuda/lib64/libOpenCL.so -DOpenCL_INCLUDE_DIR=/usr/local/cuda/include/ ..
make -j$(nproc)


cd LightGBM/python-package/;python3 setup.py install --precompile

mkdir -p /etc/OpenCL/vendors && echo "libnvidia-opencl.so.1" > /etc/OpenCL/vendors/nvidia.icd
rm -r LightGBM