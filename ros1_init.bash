#!/bin/bash
if test -z $1;then
echo "Set ros1 workspace. (\$ sh ros1_init.sh /home/ubuntu/Desktop/ros1_ws)"
exit 1
fi

echo $1

alias cw='cd '$1
alias cs='cd '$1'/src'
alias cm='cd '$1' && catkin_make'

UBUNTU_DISTRO=`cat /etc/os-release | grep VERSION_ID | sed -e 's/[^0-9]//g'`

if [ $UBUNTU_DISTRO = 1604 ]; then
source /opt/ros/kinetic/setup.bash
elif [ $UBUNTU_DISTRO = 1804 ]; then
source /opt/ros/melodic/setup.bash
elif [ $UBUNTU_DISTRO = 2004 ]; then
source /opt/ros/noetic/setup.bash
fi

source $1/devel/setup.bash

export PS1='($ROS_DISTRO):\[\033[01;34m\]\w\[\033[00m\]\$ '