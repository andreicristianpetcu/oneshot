#!/usr/bin/env bash
set -e

wget https://dl.google.com/linux/direct/google-talkplugin_current_amd64.deb -O /tmp/pkg.deb
sudo dpkg -i /tmp/pkg.deb
rm -rf /tmp/pkg.deb
