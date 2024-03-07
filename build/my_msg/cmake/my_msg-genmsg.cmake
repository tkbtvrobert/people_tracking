# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "my_msg: 7 messages, 0 services")

set(MSG_I_FLAGS "-Imy_msg:/home/frank/people_tracking_ws/src/my_msg/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Ivisualization_msgs:/opt/ros/melodic/share/visualization_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(my_msg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/HumanArray.msg" NAME_WE)
add_custom_target(_my_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_msg" "/home/frank/people_tracking_ws/src/my_msg/msg/HumanArray.msg" "geometry_msgs/Pose:my_msg/Human:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/group.msg" NAME_WE)
add_custom_target(_my_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_msg" "/home/frank/people_tracking_ws/src/my_msg/msg/group.msg" ""
)

get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/kdanger.msg" NAME_WE)
add_custom_target(_my_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_msg" "/home/frank/people_tracking_ws/src/my_msg/msg/kdanger.msg" ""
)

get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/HumanGazebo.msg" NAME_WE)
add_custom_target(_my_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_msg" "/home/frank/people_tracking_ws/src/my_msg/msg/HumanGazebo.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/groupChart.msg" NAME_WE)
add_custom_target(_my_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_msg" "/home/frank/people_tracking_ws/src/my_msg/msg/groupChart.msg" ""
)

get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/Human.msg" NAME_WE)
add_custom_target(_my_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_msg" "/home/frank/people_tracking_ws/src/my_msg/msg/Human.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/kdangerArray.msg" NAME_WE)
add_custom_target(_my_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_msg" "/home/frank/people_tracking_ws/src/my_msg/msg/kdangerArray.msg" "my_msg/kdanger:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/HumanArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/frank/people_tracking_ws/src/my_msg/msg/Human.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_msg
)
_generate_msg_cpp(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/group.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_msg
)
_generate_msg_cpp(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/kdanger.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_msg
)
_generate_msg_cpp(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/HumanGazebo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_msg
)
_generate_msg_cpp(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/groupChart.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_msg
)
_generate_msg_cpp(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/Human.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_msg
)
_generate_msg_cpp(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/kdangerArray.msg"
  "${MSG_I_FLAGS}"
  "/home/frank/people_tracking_ws/src/my_msg/msg/kdanger.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_msg
)

### Generating Services

### Generating Module File
_generate_module_cpp(my_msg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_msg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(my_msg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(my_msg_generate_messages my_msg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/HumanArray.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_cpp _my_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/group.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_cpp _my_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/kdanger.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_cpp _my_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/HumanGazebo.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_cpp _my_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/groupChart.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_cpp _my_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/Human.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_cpp _my_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/kdangerArray.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_cpp _my_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_msg_gencpp)
add_dependencies(my_msg_gencpp my_msg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_msg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/HumanArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/frank/people_tracking_ws/src/my_msg/msg/Human.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_msg
)
_generate_msg_eus(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/group.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_msg
)
_generate_msg_eus(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/kdanger.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_msg
)
_generate_msg_eus(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/HumanGazebo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_msg
)
_generate_msg_eus(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/groupChart.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_msg
)
_generate_msg_eus(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/Human.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_msg
)
_generate_msg_eus(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/kdangerArray.msg"
  "${MSG_I_FLAGS}"
  "/home/frank/people_tracking_ws/src/my_msg/msg/kdanger.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_msg
)

### Generating Services

### Generating Module File
_generate_module_eus(my_msg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_msg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(my_msg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(my_msg_generate_messages my_msg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/HumanArray.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_eus _my_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/group.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_eus _my_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/kdanger.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_eus _my_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/HumanGazebo.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_eus _my_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/groupChart.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_eus _my_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/Human.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_eus _my_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/kdangerArray.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_eus _my_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_msg_geneus)
add_dependencies(my_msg_geneus my_msg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_msg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/HumanArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/frank/people_tracking_ws/src/my_msg/msg/Human.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_msg
)
_generate_msg_lisp(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/group.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_msg
)
_generate_msg_lisp(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/kdanger.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_msg
)
_generate_msg_lisp(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/HumanGazebo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_msg
)
_generate_msg_lisp(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/groupChart.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_msg
)
_generate_msg_lisp(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/Human.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_msg
)
_generate_msg_lisp(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/kdangerArray.msg"
  "${MSG_I_FLAGS}"
  "/home/frank/people_tracking_ws/src/my_msg/msg/kdanger.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_msg
)

### Generating Services

### Generating Module File
_generate_module_lisp(my_msg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_msg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(my_msg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(my_msg_generate_messages my_msg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/HumanArray.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_lisp _my_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/group.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_lisp _my_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/kdanger.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_lisp _my_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/HumanGazebo.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_lisp _my_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/groupChart.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_lisp _my_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/Human.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_lisp _my_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/kdangerArray.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_lisp _my_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_msg_genlisp)
add_dependencies(my_msg_genlisp my_msg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_msg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/HumanArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/frank/people_tracking_ws/src/my_msg/msg/Human.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_msg
)
_generate_msg_nodejs(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/group.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_msg
)
_generate_msg_nodejs(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/kdanger.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_msg
)
_generate_msg_nodejs(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/HumanGazebo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_msg
)
_generate_msg_nodejs(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/groupChart.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_msg
)
_generate_msg_nodejs(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/Human.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_msg
)
_generate_msg_nodejs(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/kdangerArray.msg"
  "${MSG_I_FLAGS}"
  "/home/frank/people_tracking_ws/src/my_msg/msg/kdanger.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_msg
)

### Generating Services

### Generating Module File
_generate_module_nodejs(my_msg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_msg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(my_msg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(my_msg_generate_messages my_msg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/HumanArray.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_nodejs _my_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/group.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_nodejs _my_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/kdanger.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_nodejs _my_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/HumanGazebo.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_nodejs _my_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/groupChart.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_nodejs _my_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/Human.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_nodejs _my_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/kdangerArray.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_nodejs _my_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_msg_gennodejs)
add_dependencies(my_msg_gennodejs my_msg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_msg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/HumanArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/frank/people_tracking_ws/src/my_msg/msg/Human.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_msg
)
_generate_msg_py(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/group.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_msg
)
_generate_msg_py(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/kdanger.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_msg
)
_generate_msg_py(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/HumanGazebo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_msg
)
_generate_msg_py(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/groupChart.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_msg
)
_generate_msg_py(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/Human.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_msg
)
_generate_msg_py(my_msg
  "/home/frank/people_tracking_ws/src/my_msg/msg/kdangerArray.msg"
  "${MSG_I_FLAGS}"
  "/home/frank/people_tracking_ws/src/my_msg/msg/kdanger.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_msg
)

### Generating Services

### Generating Module File
_generate_module_py(my_msg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_msg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(my_msg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(my_msg_generate_messages my_msg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/HumanArray.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_py _my_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/group.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_py _my_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/kdanger.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_py _my_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/HumanGazebo.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_py _my_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/groupChart.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_py _my_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/Human.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_py _my_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/people_tracking_ws/src/my_msg/msg/kdangerArray.msg" NAME_WE)
add_dependencies(my_msg_generate_messages_py _my_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_msg_genpy)
add_dependencies(my_msg_genpy my_msg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_msg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_msg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(my_msg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(my_msg_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET visualization_msgs_generate_messages_cpp)
  add_dependencies(my_msg_generate_messages_cpp visualization_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_msg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(my_msg_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(my_msg_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET visualization_msgs_generate_messages_eus)
  add_dependencies(my_msg_generate_messages_eus visualization_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_msg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(my_msg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(my_msg_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET visualization_msgs_generate_messages_lisp)
  add_dependencies(my_msg_generate_messages_lisp visualization_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_msg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(my_msg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(my_msg_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET visualization_msgs_generate_messages_nodejs)
  add_dependencies(my_msg_generate_messages_nodejs visualization_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_msg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_msg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_msg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(my_msg_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(my_msg_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET visualization_msgs_generate_messages_py)
  add_dependencies(my_msg_generate_messages_py visualization_msgs_generate_messages_py)
endif()
