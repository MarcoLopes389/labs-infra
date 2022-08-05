cd sonar
vagrant up
vagrant ssh -c "hostname -I | cut -d' ' -f2" > /ansible/hosts
cd ..
cd kubernetes
vagrant up
vagrant ssh -c "hostname -I | cut -d' ' -f2" > /ansible/hosts
cd ..
cd jenkins
vagrant up
vagrant ssh -c "hostname -I | cut -d' ' -f2" > /ansible/hosts
cd ..
cd ansible
vagrant up
vagrant upload /ansible/hosts /ansible/hosts
vagrant upload /ansible/inventory /ansible/inventory
vagrant ssh -c "ansible-playbook -i /ansible/inventory /ansible/playbook.yml"