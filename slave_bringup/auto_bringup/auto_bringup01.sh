#! /bin/bash

cd ~/catkin_ws/src/slave_multirobot
git pull
cd ~/catkin_ws
catkin_make -DCATKIN_BLACKLIST_PACKAGES="slave_vo"

source /opt/ros/kinetic/setup.sh
source ~/catkin_ws/devel/setup.bash

export ROS_MASTER_URI=http://192.168.0.111:11311
export ROS_HOSTNAME=192.168.0.103
export ROS_IP=192.168.0.103
export TURTLEBOT_3D_SENSOR=kinect 
export NAME_SPACE=Slave01
export ROBOT_ID=1

env

#roslaunch --wait slave_bringup multi_minimal_uwb.launch
