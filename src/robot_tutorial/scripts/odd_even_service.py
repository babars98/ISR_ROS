#!/usr/bin/env python3

import rospy
from robot_tutorial.srv import OddEvenCheck, OddEvenCheckResponse

def check_number(num):
	if(num.number % 2 == 0):
		check = "Even Number"
	else:
		check = "Odd Number"
		
	return OddEvenCheckResponse(check)

if __name__ == "__main__":

	try:
		rospy.init_node("odd_even_service_node")
		rospy.Service("odd_even_check", OddEvenCheck, check_number)
		
		rospy.spin()
		
	except rospy.ROSIntreptException:
		pass
