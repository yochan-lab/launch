#! /usr/bin/env python

__author__ = 'daniel'

import roslib
roslib.load_manifest('my_pkg_name')
import rospy
import actionlib

from text2speech.msg import speakAction, speakServer

class SpeakServer:
