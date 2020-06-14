#!/bin/bash
#add fix to exercise5-server2 here
sudo sed -i -e "\$aStrictHostKeyChecking no" /etc/ssh/ssh_config
sudo apt-get install sshpass
su vagrant -c 'ssh-keygen -b 2048 -t rsa -f /home/vagrant/.ssh/id_rsa -N ""'
sshpass -p vagrant ssh-copy-id -i /home/vagrant/.ssh/id_rsa.pub vagrant@192.168.100.10
sshpass -p vagrant scp vagrant@192.168.100.10:/home/vagrant/.ssh/id_rsa.pub /tmp/server1key.pub
sudo cat /tmp/server1key.pub >> /home/vagrant/.ssh/authorized_keys