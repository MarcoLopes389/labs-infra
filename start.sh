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
vagrant upload jenkins
vagrant upload sonar
vagrant upload kubernetes
vagrant upload ansible.cfg
vagrant upload inventory
vagrant ssh -c "ansible-playbook -i inventory jenkins/main.yaml"