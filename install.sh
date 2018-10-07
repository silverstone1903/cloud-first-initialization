sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install pip
sudo -H pip install --upgrade pip
sudo apt-get install python-dev python-pip python-virtualenv python-numpy python-matplotlib
sudo -H pip install scipy scikit-learn matplotlib jupyter pandas numpy tensorflow keras seaborn xgboost 

## add swap
sudo swapon --show
free -h

sudo fallocate -l 16G /swapfile

ls -lh /swapfile
sudo chmod 600 /swapfile

sudo mkswap /swapfile

sudo swapon /swapfile

sudo swapon --show

sudo cp /etc/fstab /etc/fstab.bak

echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

## tweaking

cat /proc/sys/vm/swappiness

sudo sysctl vm.swappiness=10

sudo nano /etc/sysctl.conf
# at the bottom add the line:

vm.swappiness=10
