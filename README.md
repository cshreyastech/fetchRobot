# fetchRobot

### Execute the following commands
```
rosrun gazebo_ros spawn_model -file /home/user/catkin_ws/src/cube.urdf -urdf -x 1 -model my_object
rosrun gazebo_ros spawn_model -database demo_cube -gazebo -model grasp_cube -x 0.70 -y 0 -z 0.35
roslaunch fetch_moveit_config fetch_planning_execution.launch
rosrun fetch_train execute_trajectories.py
export LC_ALL=C.UTF-8
export LANG=C.UTF-8
python train.py
```
