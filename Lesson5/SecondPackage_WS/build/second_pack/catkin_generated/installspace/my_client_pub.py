import rospy
from std_msgs.msg import Int64

if __name__ == '__main__':
		rospy.init_node("add_two_ints_client")
    
		rospy.wait_for_service("/Do_It_go_go_go")
		pub = rospy.Publisher("/number", Int64, queue_size=10)
		rate = rospy.Rate(1)

		while not rospy.is_shutdown():
			msg = Int64()
			msg.data = 2
			pub.publish(msg)
			print('published msg:', msg.data)
			rate.sleep()