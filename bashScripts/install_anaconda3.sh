sudo apt-get update
sudo apt-get -y upgrade


sudo apt-get install git

curl -O https://repo.anaconda.com/archive/Anaconda3-2019.07-Linux-x86_64.sh
bash Anaconda3-2019.07-Linux-x86_64.sh
source ~/.bashrc

conda --version

sudo apt-get install -y python3-pip
sudo -H pip3 install scipy scikit-learn matplotlib jupyter pandas numpy tensorflow keras seaborn xgboost catboost keras kaggle
sudo -H pip3 install lightgbm
