#!/usr/bin/bash

export BOT_HOSTNAME=""
export LOC_HOSTNAME="localhost"

export ROS_HOME_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
export ROS_HOSTNAME="`hostname`.local"
export ROS_MASTER_URI="http://$LOC_HOSTNAME:11311/"

alias rec_pull="cd $ROS_HOME_DIR; git submodule init && git pull --recurse-submodules && git submodule status"
alias rec_init="cd $ROS_HOME_DIR; rec_pull && catkin init"
alias goloc="export ROS_MASTER_URI=\"http://$LOC_HOSTNAME:11311/\""
alias gobot="export ROS_MASTER_URI=\"http://$BOT_HOSTNAME:11311/\""
# if usr not in path....
if [[ ":$PATH:" == *":/usr/local:"* ]]; then
  export CMAKE_PREFIX_PATH=/usr/local:$CMAKE_PREFIX_PATH
fi
