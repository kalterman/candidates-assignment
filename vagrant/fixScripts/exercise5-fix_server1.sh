#!/bin/bash
#add fix to exercise5-server1 here
sudo sed -i -e "\$aStrictHostKeyChecking no" /etc/ssh/ssh_config
su vagrant -c 'ssh-keygen -b 2048 -t rsa -f /home/vagrant/.ssh/id_rsa -N ""'
