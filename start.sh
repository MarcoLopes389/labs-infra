# Init the vagrant machines
cd ansible
vagrant up

# Upload files to the vagrant machine
vagrant upload jenkins
vagrant upload sonar
vagrant upload kubernetes
vagrant upload ansible.cfg
vagrant upload inventory

# Put ssh keys of ansible machine in others machines
vagrant ssh -c "ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa <<< y"
vagrant ssh -c "cat ~/.ssh/id_rsa.pub" > ../ssh_key.txt

cd ..
cd sonar
vagrant up
vagrant upload ../ssh_key.txt
vagrant ssh -c "tee -a ~/.ssh/authorized_keys < ssh_key.txt"
cd ..
cd kubernetes
vagrant up
vagrant upload ../ssh_key.txt
vagrant ssh -c "tee -a ~/.ssh/authorized_keys < ssh_key.txt"
cd ..
cd jenkins
vagrant up
vagrant upload ../ssh_key.txt
vagrant ssh -c "tee -a ~/.ssh/authorized_keys" < ../ssh_key.txt

cd ..
cd ansible
# Run ansible playbook
vagrant ssh -c "ansible-playbook -i inventory jenkins/main.yaml"