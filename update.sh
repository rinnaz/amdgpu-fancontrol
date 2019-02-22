#!/bin/bash
#This one updates config and script 

if [ "$(id -u)" -ne 0 ]; then
        echo 'error: Must be run as root!' >&2
        exit 1
fi

# Copy files
cp amdgpu-fancontrol /usr/bin/
cp amdgpu-fancontrol.cfg /etc/

# Restart service
systemctl restart amdgpu-fancontrol.service
