#!/bin/bash
cd `dirname $0`
wget https://raw.githubusercontent.com/Ar-Ray-code/setup_ros_env/master/ros1_init.bash -O $HOME/.ros1_init.bash
wget https://raw.githubusercontent.com/Ar-Ray-code/setup_ros_env/master/ros2_init.bash -O $HOME/.ros2_init.bash

echo "if ! test -z \"\$ROS_DISTRO\"; then" >> ~/.bashrc
echo "export PS1=\"(\$ROS_DISTRO):\[\033[01;34m\]\w\[\033[00m\]\$ \"" >> ~/.bashrc
echo "fi" >> ~/.bashrc
## ROS1-Distro --------------------------------------------------------
read -p "Enter ros1-distro or enter a blank (e.g. noetic) : " ros1_distro

if test -z $ros1_distro;then
echo "skip setting"
else
echo $ros1_distro
fi

## ROS1-WS --------------------------------------------------------
read -p "Enter ros1_workspace or enter a blank (e.g. ~/ros1_ws) : " ros1_workspace

if test -z $ros1_workspace;then
echo "skip setting"
else
echo $ros1_workspace
echo "alias ros1_init=\"source ~/.ros1_init.bash $ros1_workspace $ros1_distro\"" >> ~/.bashrc

fi

## ROS2-Distro --------------------------------------------------------
read -p "Enter ros2-distro or enter a blank (e.g. foxy) : " ros2_distro

if test -z $ros2_distro;then
echo "skip setting"
else
echo $ros2_distro
fi

## ROS2-WS --------------------------------------------------------
read -p "Enter ros2_workspace or enter a blank (e.g. ~/ros2_ws) : " ros2_workspace
if test -z $ros2_workspace;then
echo "skip setting"
else
echo $ros2_workspace
echo "alias ros2_init=\"source ~/.ros2_init.bash $ros2_workspace $ros2_distro\"" >> ~/.bashrc
fi
