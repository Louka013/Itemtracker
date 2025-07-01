# Itemtracker

A project using an Ultrasonic Sensor connecting to a Servo Motor SG90, in the purpose to followed the movements of an item.
Powered by an arduino MEGA Board, which is plugged to a Raspberry Pi 1B.
The raspberry Pi 1B is used for ...

## Getting sources

Clone the repository and the submodules all in the row :
```
git clone --recurse-submodules https://github.com/Louka013/Itemtracker
```

## Building

Enter repository directory, clean previous build (if needed) and generate image :
```
cd Itemtracker/buildroot
make distclean
make BR2_EXTERNAL=$(realpath ..)/itemtracker itemtracker_defconfig
make
```
## Flashing Board

1. Plug FTDI cable on your computer

2. Find tty fitting with FTDI cable

```
sudo dmesg
```
It returns : "FTDI USB Serial Device converter now attached to ttyUSB**x**".

In which **x** is a number.

3. Conect yourself to Raspberry Pi 1B's shell

```
picocom -b 115200 /dev/ttyUSBx
``` 
