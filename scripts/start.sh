#!/bin/bash
source /opt/ros/kinetic/setup.bash
roslaunch rosbridge_server rosbridge_websocket.launch > /dev/null & 
cd examples
node server.js
