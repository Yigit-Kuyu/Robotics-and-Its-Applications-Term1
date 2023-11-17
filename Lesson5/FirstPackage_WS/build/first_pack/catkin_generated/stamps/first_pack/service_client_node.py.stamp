import rospy
# Importing the multiple service 
# and its corresponding response message (multipleResponse) from the package first_pack.
from first_pack.srv import multiple, multipleResponse


def multiply_client(x,y):
     # initializes a ROS node with the name "multiple_client"
    rospy.init_node("multiple_client")
    #  waits until the service "yck_service" is available
    rospy.wait_for_service("yck_service")
    #  the loop runs to 1 Hz.
    rate=rospy.Rate(1)
    while not rospy.is_shutdown():
        try:
          # creates a proxy for the service named "yck_service" with service type multiple.
          # When you call sum_two_int(a, b), you are actually making a service call to the service server.
          sum_two_int=rospy.ServiceProxy("yck_service",multiple) 
          #  calls the service with arguments a and b.
          # The multiply service, which is being called here, when you do sum_two_int(a, b).
          # you are providing values for a and b to the multiply
          response= sum_two_int(x,y)
          #  put the result from the service call.
          rospy.loginfo(response.result)
          # ensures the loop runs at the specified rate.
          rate.sleep()
        # If there's an exception (such as a service call failure), it will be caught here and an error message will be printed.
        except rospy.ServiceException as E:
            print("service is failed ", E)


if __name__ == "__main__":
    multiply_client(3,4)