echo Update & Upgrade

sudo apt-get update && sudo apt-get upgrade -y

echo Prerequisites for Docker

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

echo Installing Docker

sudo apt-get install docker-ce docker-ce-cli containerd.io -y 

echo Hello World

sudo docker run hello-world

echo Pulling ml-envs

sudo docker pull -a silverstone1903/ml-env

