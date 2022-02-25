echo "[Installation] Installing Docker"
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce docker-ce-cli containerd.io -y
echo "Ativando Docker"
sudo systemctl start docker
sudo systemctl enable docker