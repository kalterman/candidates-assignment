#!/bin/bash
#add fix to exercise3 here
sudo sed -i '0,/deny /{s/deny /allow /}' /etc/apache2/sites-available/default
sudo service apache2 restart
