#!/bin/sh
cd `dirname $0`
cp ./ros1_init.sh ~/.ros1_init.sh
cp ./ros2_init.sh ~/.ros2_init.sh

echo "if ! test -z \"\$ROS_DISTRO\"; then" >> ~/.bashrc
echo "export PS1=\"(\$ROS_DISTRO):\[\033[01;34m\]\w\[\033[00m\]\$ \"" >> ~/.bashrc
echo "fi" >> ~/.bashrc

echo "alias ros1_init=\"source ~/.ros1_init.sh\"" >> ~/.bashrc
echo "alias ros2_init=\"source ~/.ros2_init.sh\"" >> ~/.bashrc

cd -
