Homework for [COMSW6731 Humanoid Robots (SP19)](http://www.cs.columbia.edu/~allen/S19/) at Columbia University (Instructor: [Prof. Peter Allen](http://www.cs.columbia.edu/~allen/)).

# Workspace Preparation
You need to have a computer with Ubuntu 14.04 and ROS Indigo installed. If you choose to use Ubuntu 16.04 or ROS Kinectic, it is your own responsibility to make sure that it also works on Ubuntu 14.04 + ROS Indigo, on which we tested your submission. The ROS Indigo installation link is [here](http://wiki.ros.org/indigo/Installation/Ubuntu).

You might also want to install many dependencies if in need. Some helper commands can be found in [`clic_installation_14.04.sh`](https://github.com/jingxixu/humanoid-robots-s19/blob/master/clic_installation_14.04.sh) and [`clic_installation_16.04.sh`](https://github.com/jingxixu/humanoid-robots-s19/blob/master/clic_installation_16.04.sh).

After you have successfully installed Ubuntu and ROS, you should run the following commands to create a workspace
```
mkdir -p ~/homework_ws/src
cd ~/homework_ws
```

Clone the following repositories into your workspace which we will use later.
```
cd ~/homework_ws/src
git clone https://github.com/jingxixu/fetch_gazebo.git
git clone https://github.com/cse481wi18/cse481wi18.git
```

You need to switch to branch `gazebo2` of `fetch_gazebo`
```
cd ~/homework_ws/src/fetch_gazebo
git checkout gazebo2
```

Build this workspace and source it. Note, whenever you open a new terminal (unless you add this command to your `.bashrc` file), you need to source the `setup.bash` file.
```
cd ~/homework_ws
catkin_make
source devel/setup.bash
```

# Part 1: Basic Motion
In this part you need to control the robot to do a series of basic motions. [Video Demo](https://youtu.be/e8qMkphO-_w)

## Prerequisites
We expect you to have already gone through the following tutorials before you start this part.

- At least the beginner level of [ROS tutorials](http://wiki.ros.org/ROS/Tutorials)
- [actionlib_tutorials](http://wiki.ros.org/actionlib_tutorials/Tutorials)
- At least week 3 of [cse481wi18](https://github.com/cse481wi18/cse481wi18/wiki). Note that we have already cloned its code in [workspace preparation]().

## Launch
Run this command to launch a Fetch robot with a playgroud in Gazebo.
```
roslaunch fetch_gazebo playground.launch x:=0.0 y:=0.0 z:=0.0
```


## Details
You are required to implement the following sequence of motions:
- move base forward 1.5 meters
- head looks down 45 degrees
- head looks up 90 degrees
- head looks left 90 degrees
- head looks right 90 degrees
- head looks forward
- raise torso to the maximum
- move arm to joint values `[0, 0, 0, 0, 0, 0, 0]`
- close gripper
- open gripper

You are allowed to use `fetch_api` package from the `cse481wi18` repositiry that you cloned. You should name your response `motion_demo.py` and it is recommended that you put it under `~/homework_ws/src/fetch_gazebo/fetch_gazebo_demo/scripts/`.

# Part 2: Using MoveIt!

# Part 3: Using GraspIt!

# Part 4: Pick Demo

# Submission
