# Install script for directory: /home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/SecondPackage_WS/src/second_pack

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/SecondPackage_WS/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/second_pack/srv" TYPE FILE FILES "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/SecondPackage_WS/src/second_pack/srv/Do_It.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/second_pack/cmake" TYPE FILE FILES "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/SecondPackage_WS/build/second_pack/catkin_generated/installspace/second_pack-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/SecondPackage_WS/devel/include/second_pack")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/SecondPackage_WS/devel/share/roseus/ros/second_pack")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/SecondPackage_WS/devel/share/common-lisp/ros/second_pack")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/SecondPackage_WS/devel/share/gennodejs/ros/second_pack")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/SecondPackage_WS/devel/lib/python3/dist-packages/second_pack")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/SecondPackage_WS/devel/lib/python3/dist-packages/second_pack")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/SecondPackage_WS/build/second_pack/catkin_generated/installspace/second_pack.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/second_pack/cmake" TYPE FILE FILES "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/SecondPackage_WS/build/second_pack/catkin_generated/installspace/second_pack-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/second_pack/cmake" TYPE FILE FILES
    "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/SecondPackage_WS/build/second_pack/catkin_generated/installspace/second_packConfig.cmake"
    "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/SecondPackage_WS/build/second_pack/catkin_generated/installspace/second_packConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/second_pack" TYPE FILE FILES "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/SecondPackage_WS/src/second_pack/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/second_pack" TYPE PROGRAM FILES "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/SecondPackage_WS/build/second_pack/catkin_generated/installspace/my_server.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/second_pack" TYPE PROGRAM FILES "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/SecondPackage_WS/build/second_pack/catkin_generated/installspace/my_client_pub.py")
endif()

