#!/bin/bash
#

clear

# Start Gazebo and load House map
gnome-terminal --tab --command="bash -c 'export TURTLEBOT3_MODEL=waffle_pi; roslaunch ros_path_planning multi_robot.launch world_name:=wh2;'" #$SHELL'"

# Start RViz
gnome-terminal --tab --command="bash -c 'sleep 5; export TURTLEBOT3_MODEL=waffle_pi; roslaunch ros_path_planning multi_nav.launch map_file:=/home/user/maps/wh1_gmapping.yaml;'" #$SHELL'"

# Run Python Code
gnome-terminal --tab --command="bash -c 'sleep 10; python3 ../python3/return_to_base.py robot1;'"
gnome-terminal --tab --command="bash -c 'sleep 10; python3 ../python3/return_to_base.py robot2;'"
gnome-terminal --tab --command="bash -c 'sleep 10; python3 ../python3/return_to_base.py robot3;'"
#$SHELL'"

clear
#exit

