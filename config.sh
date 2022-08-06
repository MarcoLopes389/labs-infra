# This needs to be run with sudo

vagrant plugin install vagrant-vbguest
bash -c 'cat <<EOF > /etc/vbox/networks.conf
* 10.0.0.0/8 10.0.0.0/16
* 2001::/64
EOF'