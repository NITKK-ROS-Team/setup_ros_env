#!/bin/bash
if test -z $1;then
echo "Set ros2 workspace. (\$ bash ros2_init.bash /home/ubuntu/ros2_ws foxy)"
exit 1
elif test -z $2;then
echo "Set ros2 distro. (\$ bash ros2_init.bash /home/ubuntu/ros2_ws foxy)"
exit 1
fi

echo $1 "," $2

alias cw='cd '$1
alias cs='cd '$1'/src'
alias cm='cd '$1' && colcon build --symlink-install'

UBUNTU_DISTRO=`cat /etc/os-release | grep VERSION_ID | sed -e 's/[^0-9]//g'`

source /opt/ros/$2/setup.bash
source $1/install/local_setup.bash

export PS1='($ROS_DISTRO):\[\033[01;34m\]\w\[\033[00m\]\$ '