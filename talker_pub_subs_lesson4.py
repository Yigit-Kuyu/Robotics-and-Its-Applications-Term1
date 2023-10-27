# Necesary library
import rospy
from std_msgs.msg import String

class TalkerListener: # defines a class named TalkerListener.
    def __init__(self):
        # will publish messages of type String to the topic named 'chatter'. 
        # The queue_size parameter specifies the maximum number of messages 
        # that can be stored in the publisher's queue.
        self.publisher = rospy.Publisher('chatter', String, queue_size=10)
        # initializes a ROS node named 'talker_listener'
        rospy.init_node('talker_listener')
        # To control the publishing frequency. In this case, it's set to 1 Hz.
        self.rate = rospy.Rate(1)

    def talker(self):
        while not rospy.is_shutdown(): # Loop that continues as long as the ROS system is not shutting down.
            # creates a string with the format "hello world" followed by 
            # the current time obtained using rospy.get_time().
            hello_str = "hello world %s" % rospy.get_time()
            # put the string to the console.
            rospy.loginfo(hello_str)
            # publishes the string to the topic 'chatter'.
            self.publisher.publish(hello_str)
            # sets up a subscriber to listen to the topic 'chatter'. 
            # When a message is received, it will call the self.callback_func method.
            rospy.Subscriber("chatter", String, self.callback_func)
            # pauses the loop to achieve the specified publishing rate (in this case, 1 Hz).
            self.rate.sleep()
    # Defines a callback method named callback_func. 
    # It takes a data argument, which will be the received message.      
    def callback_func(self, data):
        rospy.loginfo(rospy.get_caller_id() + " Received %s", data.data)


if __name__ == '__main__':
    tl = TalkerListener() # creates an instance of the TalkerListener class.
    tl.talker() # calls the talker method, which starts the publishing loop and sets up the subscriber.
    
   