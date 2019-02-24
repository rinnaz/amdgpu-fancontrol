# amdgpu-fancontrol

## Purpose

This bash script was designed to control AMD Radeon graphics cards fan PWM. 

## How to use

To install run `install-ubuntu.sh` with sudo:

```bash
sudo ./install-ubuntu.sh
```

To update script and config run `update.sh` with sudo:

```bash
sudo ./update.sh
```

Customize temp, PWM, hysteresis and update interval values in the config file:

```bash
# Temperatures in degrees C * 1000
TEMPS=( 0 50000 50000 70000 90000 )

# PWM values corresponding to the defined temperatures.
PWMS=( 0 0 100 135 255 )

# Temperature hysteresis
HYSTERESIS=8000   # in mK

# Update interval
SLEEP_INTERVAL=1  # in s
```
Other adjustments, such as the correct hwmon path might be required as well.

## Use at your own risk

This script was initially meant as an example. Please don't just run it naively and keep in mind that I'm not responsible for failures.

## Tested with

```bash
OS: Ubuntu 18.04.2 LTS x86_64
Kernel: 4.20.12-042012-generic
Shell: bash 4.4.19
```

GPU: 
- Powercolor RX 580 Red Devil
