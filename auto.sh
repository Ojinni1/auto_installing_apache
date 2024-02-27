#!/bin/bash

if [ -d /etc/apache2 ]
then
	echo "apache already installed"
	systemctl status apache2
	apache2 -v
	whereis apache2

else
	sudo apt update
	sudo apt upgrade
	sudo apt installed apache2
	echo "apache installed"
	systemctl status apache2
	apache2 -v
	whereis apache2

fi
