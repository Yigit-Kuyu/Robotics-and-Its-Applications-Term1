# Install script for directory: /home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/FirstPackage_WS/src/first_pack

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/FirstPackage_WS/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/first_pack/srv" TYPE FILE FILES "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/FirstPackage_WS/src/first_pack/srv/multiple.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/first_pack/cmake" TYPE FILE FILES "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/FirstPackage_WS/build/first_pack/catkin_generated/installspace/first_pack-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/FirstPackage_WS/devel/include/first_pack")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/FirstPackage_WS/devel/share/roseus/ros/first_pack")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/FirstPackage_WS/devel/share/common-lisp/ros/first_pack")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/FirstPackage_WS/devel/share/gennodejs/ros/first_pack")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/FirstPackage_WS/devel/lib/python3/dist-packages/first_pack")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/FirstPackage_WS/devel/lib/python3/dist-packages/first_pack")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/FirstPackage_WS/build/first_pack/catkin_generated/installspace/first_pack.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/first_pack/cmake" TYPE FILE FILES "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/FirstPackage_WS/build/first_pack/catkin_generated/installspace/first_pack-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/first_pack/cmake" TYPE FILE FILES
    "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/FirstPackage_WS/build/first_pack/catkin_generated/installspace/first_packConfig.cmake"
    "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/FirstPackage_WS/build/first_pack/catkin_generated/installspace/first_packConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/first_pack" TYPE FILE FILES "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/FirstPackage_WS/src/first_pack/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/first_pack" TYPE PROGRAM FILES "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/FirstPackage_WS/build/first_pack/catkin_generated/installspace/talker_publish_lesson3.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/first_pack" TYPE PROGRAM FILES "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/FirstPackage_WS/build/first_pack/catkin_generated/installspace/service_node.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/first_pack" TYPE PROGRAM FILES "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/FirstPackage_WS/build/first_pack/catkin_generated/installspace/service_client_node.py")
endif()

