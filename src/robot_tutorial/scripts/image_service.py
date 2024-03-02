#!/usr/bin/env python

import rospy
from robot_tutorial.srv import ImageAngle, ImageAngleResponse
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2
import os

def get_image(req):
    angle = req.angle

    image_path = os.path.join("imgs/", f"{angle}.png")
    print(image_path)
    if os.path.exists(image_path):
        cv2_image = cv2.imread(image_path)

        if cv2_image is not None:
            cv_bridge = CvBridge()
            image_msg = cv_bridge.cv2_to_imgmsg(cv2_image, encoding="bgr8")

            return ImageAngleResponse(image_msg)
        
        else:
            rospy.logerr("Failed to read the iamge: %s", image_path)
            return None
    else:
        rospy.logerr("Image with angle {} not found".format(angle))
        return None

def process_image():

    try:

        rospy.init_node("image_service_node")
        rospy.Service("image_service", ImageAngle, get_image)

        rospy.spin()

    except rospy.ROSIntreptException:
        pass

if __name__ == "__main__":
    process_image()