#!/usr/bin/env python3

import rospy
from robot_tutorial.srv import OddEvenCheck, OddEvenCheckResponse

def check_number(srv_proxy):

#loop the number
	while True:
	
		try:
		
			user_inp = input("\nEnter a Number: ")
			resp = srv_proxy(int(user_inp))
	
			ans = resp.answer		
			print(ans)

		except ValueError:
			print("Not a number")
			break

if __name__ == "__main__":

	try:
		rospy.init_node("odd_even_client_node")
		srv_proxy = rospy.ServiceProxy("odd_even_check", OddEvenCheck)
		
		check_number(srv_proxy)
		
	except rospy.ROSIntreptException:
		pass
