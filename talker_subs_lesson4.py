import rospy #  Python library for ROS
# Imports the String message type from the std_msgs.msg package. 
#  The std_msgs package contains common message types used in ROS.
from std_msgs.msg import String


#  This is a callback function that will be executed whenever a message is received on the subscribed topic. 
#  It takes one argument, data, which will contain the received message.
def callback_func(data): 
        # This is a way to log information to the console. It's similar to Python's print function,
        # it's logging the received data.
        rospy.loginfo(rospy.get_caller_id() + " Received %s", data.data)
        # rospy.get_caller_id() : node name
       
def listener():
  
  rospy.init_node('listener') #   Initializes a ROS node with the name 'listener'. 
                              #   Each node must have a unique name.

  # creates a subscriber. It subscribes to the topic named 'chatter' with the message type String. 
  # When a message is received on this topic, it will call the callback_func function.
  rospy.Subscriber("chatter", String, callback_func)
  
  rospy.spin() # keeps the program from exiting.
 
  
if __name__ == '__main__':
   listener()