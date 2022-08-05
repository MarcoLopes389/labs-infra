# Installing ansible

echo "Installing ansible"

sudo apt update -y && sudo apt upgrade -y
sudo apt install python3 -y
sudo apt install python3-pip -y
python3 -m pip install --upgrade ansible
