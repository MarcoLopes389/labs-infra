vagrant plugin install vagrant-vbguest
sudo bash -c 'cat <<EOF > /etc/vbox/networks.conf
* 10.0.0.0/8 10.0.0.0/16
* 2001::/64
EOF'
cd sonar
vagrant up
cd ..
cd kubernetes
vagrant up
cd ..
cd jenkins
vagrant up
cd ..
cd ansible
vagrant up
vagrant upload hosts
vagrant upload roles
vagrant upload ansible.cfg
# vagrant ssh -c "ansible-playbook -i /ansible/inventory /ansible/playbook.yml"