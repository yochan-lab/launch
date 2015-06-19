#!/bin/bash

source /home/yochan/catkin_ws/install/setup.bash
sudo ntpdate 192.168.0.100
roslaunch startup.launch
