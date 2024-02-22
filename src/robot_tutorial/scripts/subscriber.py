import rospy
from std_msgs.msg import String

def process_msg(data):
    print('Recieved, ' + str(data))

def create_subscriber():

    rospy.init_node('hello_world_sub_node')
    rospy.Subscriber('hello_world', String, process_msg)

if __name__ == '__main__':

    create_subscriber()
    rospy.spin()