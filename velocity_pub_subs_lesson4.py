import rospy #  imports the rospy library
from geometry_msgs.msg import Twist #  imports the Twist message type from the geometry_msgs package

class TwistPublisherSubscriber: # defines a class named TwistPublisherSubscriber.
    def __init__(self):
        # creates a publisher that publishes messages of type Twist to the topic /cmd_vel with a queue size of 10
        self.publisher = rospy.Publisher("/cmd_vel", Twist, queue_size=10)
        # Creates a subscriber that listens to the topic /cmd_vel and expects messages of type Twist.
        # When a message is received, it will be passed to the callback_func method.
        rospy.Subscriber("/cmd_vel", Twist, self.callback_func)
        # Initializes a ROS node with the name 'twist_pub_sub'.
        rospy.init_node('twist_pub_sub')
        self.rate = rospy.Rate(10)
        self.i = 1

    def callback_func(self, data):
        # Put an information message to the ROS system. 
        # It prints out the values of linear.x and angular.z from the received message.
        rospy.loginfo("Received Twist message: linear.x = %f, angular.z = %f", data.linear.x, data.angular.z)

    def publish(self):
        while not rospy.is_shutdown():
            twist = Twist() # Creates an instance of the Twist message.
            twist.linear.x = 1.0 + self.i
            twist.angular.z = 0.5 + self.i
            self.i += 1

            # publishes the Twist message to the topic /cmd_vel.
            self.publisher.publish(twist)
            
            print(f'Twist: linear.x = {twist.linear.x}, angular.z = {twist.angular.z}')

            self.rate.sleep()

if __name__ == '__main__':
    
    pub_sub = TwistPublisherSubscriber() #  creates an instance of the TwistPublisherSubscriber class.
    pub_sub.publish() #  calls the publish method, which starts the publishing loop.
    
