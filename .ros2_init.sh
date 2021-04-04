alias cw='cd ~/ros2_ws'
alias cs='cd ~/ros2_ws/src'
alias cm='cd ~/ros2_ws && colcon build'
source /opt/ros/foxy/setup.bash
source ~/ros2_ws/install/local_setup.bash

export PS1='($ROS_DISTRO):\[\033[01;34m\]\w\[\033[00m\]\$ '
