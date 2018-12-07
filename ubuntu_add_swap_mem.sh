free -h

sudo fallocate -l 4G /swapfile
ls -lh /swapfile

sudo chmod 600 /swapfile
ls -lh /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon --show
sudo cp /etc/fstab /etc/fstab.bak
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

sudo sysctl vm.swappiness=10

sudo nano /etc/sysctl.conf
# vm.swappiness=10

cat /proc/sys/vm/vfs_cache_pressure
sudo sysctl vm.vfs_cache_pressure=50

sudo nano /etc/sysctl.conf
# vm.vfs_cache_pressure=50