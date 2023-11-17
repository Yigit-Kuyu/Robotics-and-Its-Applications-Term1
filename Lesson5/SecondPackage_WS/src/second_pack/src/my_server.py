import rospy
# imports the service message type Do_It and 
# the corresponding response message type Do_ItResponse from the second_pack.srv package. 
from second_pack.srv import Do_It, Do_ItResponse

# Defines a function handle_add_two_ints that takes a request (req) as an argument. 
# In this case, req is an instance of the Do_It service message type.
def handle_add_two_ints(req):
	return Do_ItResponse(req.a + req.b) #  the response that will be sent back to the client 
                                        #  when the service call is completed.
	

if __name__ == '__main__':
	# initializes a ROS node with the name "add_two_ints_server". 
    rospy.init_node("add_two_ints_server")
	#  put an informational message to the terminal indicating that the server node has been created.
    rospy.loginfo("Add two ints server node created")
    # creates a ROS service with the name "/Do_It_go_go_go", using the service message type Do_It for requests 
    # and the handle_add_two_ints function to handle incoming requests.
	service = rospy.Service("/Do_It_go_go_go", Do_It, handle_add_two_ints)
	
    rospy.loginfo("Service server has been started")

	rospy.spin()
