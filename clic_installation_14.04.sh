
# install ros indigo

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

sudo apt-get update

sudo apt-get install -y ros-indigo-desktop-full

sudo rosdep init

rosdep update


## install fetch-ros dependencies

sudo apt-get install -y ros-indigo-opencv-candidate ros-indigo-simple-grasping ros-indigo-moveit* ros-indigo-navigation ros-indigo-slam-karto ros-indigo-costmap-2d ros-indigo-rgbd-launch


# Install GraspIt! dependencies

sudo apt-get install -y libqt4-dev libqt4-opengl-dev libqt4-sql-psql libcoin80-dev libsoqt4-dev libblas-dev liblapack-dev libqhull-dev

# Install Node-manager

sudo apt-get install ros-indigo-node-manager-fkie

sudo apt-get install ipython

# Install PR2 dependencies
sudo apt-get install -y ros-indigo-gazebo-* ros-indigo-pr2*

# Install Baxter dependencies
sudo apt-get install -y ros-indigo-baxter-*
