#!/usr/bin/env python3

import rospy
from robot_tutorial.srv import ImageAngle, ImageAngleResponse
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2
import os

def show_image(image):
	
    if image:
	    cv_bridge = CvBridge()
	    cv_image = cv_bridge.imgmsg_to_cv2(image, "rgb8")
	    resized_image = cv2.resize(cv_image, (600, 450))
	    cv2.imshow("Image", resized_image)   
	    cv2.waitKey(0)
	    cv2.destroyAllWindows()
	

def get_image(srv_proxy):
	
	user_inp = input("\nEnter an angle: ")	
	resp = srv_proxy(int(user_inp))
	show_image(resp.image)
		
	

if __name__ == "__main__":

	try:
		rospy.init_node("image_client_node")
		srv_proxy = rospy.ServiceProxy("image_service", ImageAngle)
		
		get_image(srv_proxy)
		
	except rospy.ROSIntreptException:
		pass