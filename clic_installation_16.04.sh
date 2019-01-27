
# install ros kinetic

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

sudo apt-get update

sudo apt-get install -y ros-kinetic-desktop-full

sudo rosdep init

rosdep update


## install fetch-ros dependencies

sudo apt-get install -y ros-kinetic-opencv-candidate ros-kinetic-simple-grasping ros-kinetic-moveit* ros-kinetic-navigation ros-kinetic-slam-karto ros-kinetic-costmap-2d ros-kinetic-rgbd-launch


# Install GraspIt! dependencies

sudo apt-get install -y libqt4-dev libqt4-opengl-dev libqt4-sql-psql libcoin80-dev libsoqt4-dev libblas-dev liblapack-dev libqhull-dev

# Install Node-manager

sudo apt-get install ros-kinetic-node-manager-fkie

sudo apt-get install ipython
