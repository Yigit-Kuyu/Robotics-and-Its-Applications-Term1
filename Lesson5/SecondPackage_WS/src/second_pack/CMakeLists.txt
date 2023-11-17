cmake_minimum_required(VERSION 3.0.2)
project(second_pack)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  rospy
  std_msgs
  message_generation # New
)

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

add_service_files(FILES
  Do_It.srv # New
  )


  generate_messages(
  DEPENDENCIES
  std_msgs # New 
)

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES first_pack
#  CATKIN_DEPENDS rospy std_msgs
#  DEPENDS system_lib
)


catkin_install_python(PROGRAMS
  src/my_server.py # New
  src/my_client_pub.py # New
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)








