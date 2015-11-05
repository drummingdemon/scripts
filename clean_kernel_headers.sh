#!/bin/bash
sudo apt-get purge $(dpkg --get-selections | awk '((/^linux-/) && (/[0-9]\./) && (!/'"`uname -r | sed "s/-generic//g"`"'/)) {print $1}')
