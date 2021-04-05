if test -z $1;then
echo "Set ros1 workspace. (\$ sh ros1_init.sh /home/ubuntu/Desktop/ros1_ws)"
exit 1
fi

echo $1

alias cw='cd '$1
alias cs='cd '$1'/src'
alias cm='cd '$1' && catkin_make'

source /opt/ros/noetic/setup.bash
source $1/devel/setup.bash

export PS1='($ROS_DISTRO):\[\033[01;34m\]\w\[\033[00m\]\$ '