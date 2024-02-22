#!/usr/bin/env python3

import rospy
from std_msgs.msg import Float32

wheel_radius = 0.3

def publish_speed(speed):  
    pub = rospy.Publisher("speed", Float32, queue_size=5)
    pub.publish(speed)

def calc_speed(rpm):
    
    wheel_radius = rospy.get_param("/wheel_radius")
        
    speed = rpm.data * 2 * 3.14159 / 60 * wheel_radius
    publish_speed(speed)

def create_sub():
    rospy.Subscriber("rpm", Float32, calc_speed)    

if __name__ == "__main__":

    rospy.init_node("speed_cal_sub_node")

    create_sub()

    rospy.spin()