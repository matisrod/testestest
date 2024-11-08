#!/bin/bash
# Met a jour les paquets
sudo apt-get update

sudo apt-get install -y nodejs npm

mkdir /home/azureadmin/website

wget https://raw.githubusercontent.com/Boucanier/test-azure/main/website/app.js -O /home/azureadmin/website/app.js
wget https://raw.githubusercontent.com/Boucanier/test-azure/main/website/package.json -O /home/azureadmin/website/package.json

cd /home/azureadmin/website

sudo npm install

sudo npm start &

# sudo echo "[Unit]
# Description=Mon serveur Node.js
# After=network.target

# [Service]
# ExecStart=cd /home/azureadmin/website && sudo /usr/bin/npm start
# Restart=always
# User=azureadmin
# Environment=PORT=80

# [Install]
# WantedBy=multi-user.target
# " > /etc/systemd/system/nodeapp.service

# sudo systemctl daemon-reload
# sudo systemctl enable node-app
# sudo systemctl start nodeapp

exit 0