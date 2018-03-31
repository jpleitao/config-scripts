#!/bin/sh

sudo apt-get update
sudo apt-get upgrade

# Install Atom
wget --output-document=atom.deb https://atom.io/download/deb
sudo dpkg -i atom.deb

sudo apt install nixnote2

sudo apt-get install texlive-base

sudo apt-get install thunderbird

wget https://s3.amazonaws.com/kamhix/downloads/todoist-linux-beta-64bits.tar.gz
tar zxvf todoist-linux-beta-64bits.tar.gz
rm todoist-linux-beta-64bits.tar.gz

mv Todoist Linux 64bits/ todoist-64bits/
wget --output-document=todoist.png https://cdn.slidesharecdn.com/profile-photo-Todoist-48x48.jpg?cb=1447151310
mv todoist.png todoist-64bits/
sudo mv todoist-64bits/ /opt/todoist-64bits/
# Creeate Todoist Desktop entry
sudo python create_desktop_entry.py Todoist
sudo mv todoist.desktop /usr/share/applications/
