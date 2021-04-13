if test -z $1;then
echo "Set ros2 workspace. (\$ sh ros2_init.sh /home/ubuntu/Desktop/ros2_ws)"
exit 1
fi

echo $1

alias cw='cd '$1
alias cs='cd '$1'/src'
alias cm='cd '$1' && colcon build --symlink-install'

source /opt/ros/foxy/setup.bash
source $1/install/local_setup.bash

export PS1='($ROS_DISTRO):\[\033[01;34m\]\w\[\033[00m\]\$ '