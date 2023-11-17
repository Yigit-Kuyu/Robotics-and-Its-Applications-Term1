import rospy
# Importing the multiple service 
# and its corresponding response message (multipleResponse) from the package first_pack.
from first_pack.srv import multiple, multipleResponse


#  Actual service callback. It is what will be executed 
#  when a client sends a request to the yck_service.
def callback_func(request):
    return multipleResponse(request.a + request.b)


def multiply_server():
    # initializes a ROS node with the name multiple_service.
    rospy.init_node("multiple_service")
    # This line sets up a service named 'yck_service' which uses the service type multiple (imported from first_pack.srv), 
    #  and it specifies that the callback function to handle requests is callback_func.
    service=rospy.Service('yck_service', multiple, callback_func) # name, type, callback func
    # keeps the node running until it is shut down.
    rospy.spin()

if __name__ == "__main__":
    multiply_server()