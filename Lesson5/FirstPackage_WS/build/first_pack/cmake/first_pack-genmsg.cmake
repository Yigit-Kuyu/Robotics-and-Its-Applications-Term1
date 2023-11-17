# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "first_pack: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(first_pack_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/FirstPackage_WS/src/first_pack/srv/multiple.srv" NAME_WE)
add_custom_target(_first_pack_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "first_pack" "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/FirstPackage_WS/src/first_pack/srv/multiple.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(first_pack
  "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/FirstPackage_WS/src/first_pack/srv/multiple.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/first_pack
)

### Generating Module File
_generate_module_cpp(first_pack
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/first_pack
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(first_pack_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(first_pack_generate_messages first_pack_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/FirstPackage_WS/src/first_pack/srv/multiple.srv" NAME_WE)
add_dependencies(first_pack_generate_messages_cpp _first_pack_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(first_pack_gencpp)
add_dependencies(first_pack_gencpp first_pack_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS first_pack_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(first_pack
  "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/FirstPackage_WS/src/first_pack/srv/multiple.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/first_pack
)

### Generating Module File
_generate_module_eus(first_pack
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/first_pack
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(first_pack_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(first_pack_generate_messages first_pack_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/FirstPackage_WS/src/first_pack/srv/multiple.srv" NAME_WE)
add_dependencies(first_pack_generate_messages_eus _first_pack_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(first_pack_geneus)
add_dependencies(first_pack_geneus first_pack_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS first_pack_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(first_pack
  "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/FirstPackage_WS/src/first_pack/srv/multiple.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/first_pack
)

### Generating Module File
_generate_module_lisp(first_pack
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/first_pack
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(first_pack_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(first_pack_generate_messages first_pack_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/FirstPackage_WS/src/first_pack/srv/multiple.srv" NAME_WE)
add_dependencies(first_pack_generate_messages_lisp _first_pack_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(first_pack_genlisp)
add_dependencies(first_pack_genlisp first_pack_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS first_pack_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(first_pack
  "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/FirstPackage_WS/src/first_pack/srv/multiple.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/first_pack
)

### Generating Module File
_generate_module_nodejs(first_pack
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/first_pack
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(first_pack_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(first_pack_generate_messages first_pack_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/FirstPackage_WS/src/first_pack/srv/multiple.srv" NAME_WE)
add_dependencies(first_pack_generate_messages_nodejs _first_pack_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(first_pack_gennodejs)
add_dependencies(first_pack_gennodejs first_pack_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS first_pack_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(first_pack
  "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/FirstPackage_WS/src/first_pack/srv/multiple.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/first_pack
)

### Generating Module File
_generate_module_py(first_pack
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/first_pack
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(first_pack_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(first_pack_generate_messages first_pack_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yck/Desktop/Robotics_and_ItsApplications/Lesson5/FirstPackage_WS/src/first_pack/srv/multiple.srv" NAME_WE)
add_dependencies(first_pack_generate_messages_py _first_pack_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(first_pack_genpy)
add_dependencies(first_pack_genpy first_pack_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS first_pack_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/first_pack)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/first_pack
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(first_pack_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/first_pack)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/first_pack
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(first_pack_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/first_pack)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/first_pack
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(first_pack_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/first_pack)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/first_pack
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(first_pack_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/first_pack)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/first_pack\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/first_pack
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(first_pack_generate_messages_py std_msgs_generate_messages_py)
endif()
