#!/bin/bash
if test -z $1;then
echo "Set ros1 workspace. (\$ bash ros1_init.bash /home/ubuntu/ros1_ws noetic)"
exit 1
elif test -z $2;then
echo "Set ros1 distro. (\$ bash ros1_init.bash /home/ubuntu/ros1_ws noetic)"
exit 1
fi

echo $1 "," $2

alias cw='cd '$1
alias cs='cd '$1'/src'
alias cm='cd '$1' && catkin_make'

UBUNTU_DISTRO=`cat /etc/os-release | grep VERSION_ID | sed -e 's/[^0-9]//g'`

source /opt/ros/$2/setup.bash
source $1/devel/setup.bash

export PS1='($ROS_DISTRO):\[\033[01;34m\]\w\[\033[00m\]\$ '