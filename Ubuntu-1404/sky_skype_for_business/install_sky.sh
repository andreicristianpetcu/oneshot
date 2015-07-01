#!/bin/bash
set -e

wget http://tel.red/linux/sky_ubuntu64_v2.0.355.deb -O /tmp/sky_ubuntu64.deb
sudo dpkg -i /tmp/sky_ubuntu64.deb
rm -rf /tmp/sky_ubuntu64.deb
