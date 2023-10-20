import rospy #  Python library for ROS
# Imports the String message type from the std_msgs.msg package. 
#  The std_msgs package contains common message types used in ROS.
from std_msgs.msg import String
   
def talker():
   # Will publish messages of type String to the topic 'chatter'. 
   # The queue_size=10 parameter specifies the maximum number of messages that can be stored in the publisher's queue.
   pub = rospy.Publisher('chatter', String, queue_size=10) #  rospy.Publisher('/<topic_name>', String, queue_size=10) 
   # Initializes a ROS node named 'talker'. 
   # The anonymous=True argument ensures that the node has a unique name by appending a random number to it. 
   rospy.init_node('talker', anonymous=True) # rospy.init_node('<node_name>', anonymous=True) 
   rate = rospy.Rate(10) # 10hz
   while not rospy.is_shutdown(): # Continues as long as the ROS system is not shutting down.
        hello_str = "hello world %s" % rospy.get_time() # current time obtained using rospy.get_time().
        rospy.loginfo(hello_str) # simultaneously display the data  on the terminal and to the log file 
        pub.publish(hello_str)  # publishes hello_str to the topic 'chatter'.
        rate.sleep() # pauses the loop to achieve the specified publishing rate (in this case, 10 Hz).
   
if __name__ == '__main__':
        try:
           talker() # calls the talker() function
        except rospy.ROSInterruptException: # when the node is interrupted
           pass