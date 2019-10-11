FROM ubuntu:latest

ENV PACKAGES="\
pandas \
scikit-learn \
numpy \
scipy \
xgboost \
lightgbm \
matplotlib \
seaborn \
kaggle \
catboost \
tqdm \
tensorflow \
keras \
numba  \
xgbfir \
jupyterlab \
ipython  \
"


RUN apt-get update && apt-get upgrade -y && apt install -y python3-pip && apt install build-essential libssl-dev libffi-dev python3-dev -y  && pip3 install $PACKAGES --no-cache-dir
