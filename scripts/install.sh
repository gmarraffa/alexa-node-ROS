#!/bin/bash
# INSTALL ROS
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt-get update
sudo apt-get install -y ros-kinetic-desktop-full
sudo apt-get install -y ros-kinetic-rosbridge-server
sudo rosdep init
rosdep update
sudo apt install -y python-rosinstall python-rosinstall-generator python-wstool build-essential
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc

# INSTALL GIT
sudo apt install -y git

# INSTALL NODE
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

# ISTALL DEPENDENCIES
cd alexa-node-ROS && npm install
