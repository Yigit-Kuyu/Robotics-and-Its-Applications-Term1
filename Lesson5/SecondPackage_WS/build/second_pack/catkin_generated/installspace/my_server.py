import rospy
from second_pack.srv import Do_It, Do_ItResponse

def handle_add_two_ints(req):
	return Do_ItResponse(req.a + req.b)
	

if __name__ == '__main__':
	rospy.init_node("add_two_ints_server")
	rospy.loginfo("Add two ints server node created")

	service = rospy.Service("/Do_It_go_go_go", Do_It, handle_add_two_ints)
	rospy.loginfo("Service server has been started")

	rospy.spin()
