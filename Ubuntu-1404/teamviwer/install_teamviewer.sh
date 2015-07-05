#!/usr/bin/env bash
set -e

sudo dpkg --add-architecture i386
sudo apt-get install gdebi -y
sudo apt-get update
wget http://download.teamviewer.com/download/version_10x/teamviewer_linux.deb -O /tmp/pkg.deb
sudo gdebi -n /tmp/pkg.deb
sudo apt-get -f install
