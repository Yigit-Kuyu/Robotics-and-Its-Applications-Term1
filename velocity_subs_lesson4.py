
# importing necessary ROS and message types.
import rospy
from geometry_msgs.msg import Twist



def callback_func(data): # a callback function that will be executed whenever a message is received.
    # put the received message to the console.
    rospy.loginfo("Received Twist message: linear.x = %f, angular.z = %f", data.linear.x, data.angular.z)



def subscriber():
    # initializes a ROS node with the name 'twist_subscriberr'.
    rospy.init_node('twist_subscriberr')
    
    # Creates a subscriber. It subscribes to the topic "/cmd_vel" with the message type Twist, 
    # and specifies callback_func as the function to be called when a message is received.
    rospy.Subscriber("/cmd_vel", Twist, callback_func)
    
    # keeps the program from exiting.
    rospy.spin()

if __name__ == '__main__':
    subscriber()