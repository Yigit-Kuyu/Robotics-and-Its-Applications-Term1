import rospy
#  Imports the Int64 message type from the std_msgs.msg package. 
#  The Int64 message type represents a 64-bit signed integer.
from std_msgs.msg import Int64

if __name__ == '__main__':
		#  initializes a ROS node with the name "add_two_ints_client". 
		rospy.init_node("add_two_ints_client")
        # waits for a service named "/Do_It_go_go_go" to become available. 
		rospy.wait_for_service("/Do_It_go_go_go")
		# creates a publisher that will publish messages of type Int64 to the topic "/number". 
		pub = rospy.Publisher("/number", Int64, queue_size=10)
		rate = rospy.Rate(1)

		while not rospy.is_shutdown():
			msg = Int64() # creates an instance of the Int64 message type.
			msg.data = 2 
			pub.publish(msg) # publishes the message to the topic "/number".
			print('published msg:', msg.data)
			rate.sleep()