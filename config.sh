# This needs to be run with sudo

# Install vagrant
apt install -y vagrant

# Install vbguest for virtualbox
vagrant plugin install vagrant-vbguest

# Set the ip ranges
bash -c 'cat <<EOF > /etc/vbox/networks.conf
* 10.0.0.0/8 10.0.0.0/16
* 2001::/64
EOF'