#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then
        echo 'error: Must be run as root!' >&2
        exit 1
fi

# Copy files
cp amdgpu-fancontrol /usr/bin/
cp amdgpu-fancontrol.service /etc/systemd/system/
cp amdgpu-fancontrol.cfg /etc/

# Enable & start service
systemctl enable amdgpu-fancontrol.service
systemctl start amdgpu-fancontrol.service
