import rospy
from std_msgs.msg import Float32

rpm = 15

def rpm_pub():
    rospy.init_node("rpm_pub_node")
    pub = rospy.Publisher("rpm", Float32, queue_size=5)

    rate = rospy.Rate(1)

    while not rospy.is_shutdown():

        pub.publish(rpm)
        rate.sleep()

if __name__ == "__main__":

    try:
        rpm_pub()
    
    except rospy.ROSInterruptException:
        pass