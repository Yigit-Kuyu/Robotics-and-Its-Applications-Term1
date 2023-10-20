import rospy # Python library for ROS
from geometry_msgs.msg import Twist # Twist is a message type from the geometry_msgs package

class TwistPublisher:
    def __init__(self):
        # initializes a publisher object that will publish Twist messages on the /cmd_vel topic with a queue size of 10.
        self.publisher = rospy.Publisher("/cmd_vel", Twist, queue_size=10)

    
    def publish(self, twist):
        self.publisher.publish(twist) # publish takes a twist message as input and publishes it using the self.publisher. 
        

if __name__ == '__main__':
    rospy.init_node('twist_publisher') # This initializes a ROS node with the name 'twist_publisher'
    publisher = TwistPublisher() #  Creates an instance of the TwistPublisher class,
    rate = rospy.Rate(10) # 10hz
    i=1
    while not rospy.is_shutdown(): # Continues as long as the ROS system is not shutting down.
        
        # Create a Twist message
        twist = Twist()
        twist.linear.x = 1.0 + i
        twist.angular.z = 0.5 + i
        i+=1
        
        
        publisher.publish(twist) # The Twist message is published using the publish method of the TwistPublisher class.
        print(f'Twist: linear.x = {twist.linear.x}, angular.z = {twist.angular.z}')

        rate.sleep() 