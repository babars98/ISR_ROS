#!/usr/bin/env python3

import rospy

if __name__ == '__main__':
    rospy.init_node('This is first node')

    rospy.loginfo('This node has started')

    rate = rospy.Rate(1)

    while not rospy.is_shutdown():
        rospy.loginfo('Hello World')
        rate.sleep()