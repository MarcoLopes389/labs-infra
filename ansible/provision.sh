# Installing ansible
echo "Installing ansible"
sudo apt update -y && sudo apt upgrade -y
sudo apt install python3 -y
sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update -y && sudo apt-get install ansible -y