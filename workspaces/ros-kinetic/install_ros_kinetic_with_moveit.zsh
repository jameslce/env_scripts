#!/bin/zsh

sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt-get update
sudo apt-get install -y ros-kinetic-desktop-full
sudo apt-cache search ros- 
sudo rosdep init
rosdep update

sudo apt-get install -y python-rosinstall python-rosinstall-generator python-wstool build-essential

sudo apt-get install -y ros-kinetic-joy ros-kinetic-costmap-2d ros-kinetic-nav-core ros-kinetic-sound-play ros-kinetic-amcl ros-kinetic-slam-gmapping ros-kinetic-move-base ros-kinetic-controller-interface ros-kinetic-gazebo-ros-control ros-kinetic-joint-state-controller ros-kinetic-effort-controllers ros-kinetic-moveit-msgs ros-kinetic-stdr-simulator ros-kinetic-teleop-twist-keyboard ros-kinetic-slam-gmapping ros-kinetic-map-server ros-kinetic-qt-build ros-kinetic-kdl-parser ros-kinetic-combined-robot-hw ros-kinetic-combined-robot-hw-tests ros-kinetic-controller-manager-tests ros-kinetic-diff-drive-controller ros-kinetic-force-torque-sensor-controller ros-kinetic-gripper-action-controller ros-kinetic-imu-sensor-controller ros-kinetic-position-controllers ros-kinetic-ros-control ros-kinetic-ros-controllers ros-kinetic-rqt-joint-trajectory-controller ros-kinetic-velocity-controllers
sudo apt-get install -y ros-kinetic-cv-bridge ros-kinetic-polled-camera ros-kinetic-camera-info-manager ros-kinetic-tf-conversions
sudo apt-get install -y ros-kinetic-opencv3 libopencv-dev

sudo apt-get install -y ros-kinetic-rqt
sudo apt-get install -y ros-kinetic-rqt-common-plugins

source /opt/ros/kinetic/setup.zsh
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/ && catkin_make
source ~/catkin_ws/devel/setup.zsh
env | grep ros

echo "source /opt/ros/kinetic/setup.zsh" > ~/catkin_ws/ros_env.sh
echo "source ~/catkin_ws/devel/setup.zsh" >> ~/catkin_ws/ros_env.sh
echo "env | grep ros" >> ~/catkin_ws/ros_env.sh

chmod +x ~/catkin_ws/ros_env.sh

rosdep update
sudo apt-get update

sudo apt-get install -y python-wstool python-catkin-tools clang-format-3.8
sudo apt-get install -y ros-kinetic-moveit* ros-kinetic-gazebo* ros-kinetic-ros-control ros-kinetic-ros-controllers libompl-dev ompl-demos
sudo apt-get install -y ros-kinetic-trac-ik-kinematics-plugin
sudo apt-get install -y ros-kinetic-yocs-* ros-kinetic-ecl-* ros-kinetic-ecto-*
sudo apt-get install -y ros-kinetic-manipulation-msgs 

source /opt/ros/kinetic/setup.bash

