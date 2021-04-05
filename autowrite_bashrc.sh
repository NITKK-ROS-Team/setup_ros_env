#!/bin/sh
cd `dirname $0`
cp ./ros1_init.sh ~/.ros1_init.sh
cp ./ros2_init.sh ~/.ros2_init.sh

echo "if ! test -z \"\$ROS_DISTRO\"; then" >> ~/.bashrc
echo "export PS1=\"(\$ROS_DISTRO):\[\033[01;34m\]\w\[\033[00m\]\$ \"" >> ~/.bashrc
echo "fi" >> ~/.bashrc
## --------------------------------------------------------
read -p "Enter ros1_workspace(abs path) : " ros1_workspace

if test -z $ros1_workspace;then
echo "skip setting"
else
echo $ros1_workspace
echo "alias ros1_init=\"source ~/.ros1_init.sh $ros1_workspace\"" >> ~/.bashrc

fi
## --------------------------------------------------------
read -p "Enter ros2_workspace(abs path) : " ros2_workspace
if test -z $ros2_workspace;then
echo "skip setting"
else
echo $ros2_workspace
echo "alias ros2_init=\"source ~/.ros2_init.sh $ros2_workspace\"" >> ~/.bashrc
fi