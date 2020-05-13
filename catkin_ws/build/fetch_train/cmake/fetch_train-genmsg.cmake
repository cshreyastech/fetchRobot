# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "fetch_train: 0 messages, 4 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/melodic/share/trajectory_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(fetch_train_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EeRpy.srv" NAME_WE)
add_custom_target(_fetch_train_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fetch_train" "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EeRpy.srv" ""
)

get_filename_component(_filename "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EeTraj.srv" NAME_WE)
add_custom_target(_fetch_train_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fetch_train" "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EeTraj.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/JointTraj.srv" NAME_WE)
add_custom_target(_fetch_train_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fetch_train" "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/JointTraj.srv" "trajectory_msgs/JointTrajectoryPoint"
)

get_filename_component(_filename "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EePose.srv" NAME_WE)
add_custom_target(_fetch_train_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fetch_train" "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EePose.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(fetch_train
  "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EeRpy.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fetch_train
)
_generate_srv_cpp(fetch_train
  "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EeTraj.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fetch_train
)
_generate_srv_cpp(fetch_train
  "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/JointTraj.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fetch_train
)
_generate_srv_cpp(fetch_train
  "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EePose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fetch_train
)

### Generating Module File
_generate_module_cpp(fetch_train
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fetch_train
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(fetch_train_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(fetch_train_generate_messages fetch_train_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EeRpy.srv" NAME_WE)
add_dependencies(fetch_train_generate_messages_cpp _fetch_train_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EeTraj.srv" NAME_WE)
add_dependencies(fetch_train_generate_messages_cpp _fetch_train_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/JointTraj.srv" NAME_WE)
add_dependencies(fetch_train_generate_messages_cpp _fetch_train_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EePose.srv" NAME_WE)
add_dependencies(fetch_train_generate_messages_cpp _fetch_train_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fetch_train_gencpp)
add_dependencies(fetch_train_gencpp fetch_train_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fetch_train_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(fetch_train
  "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EeRpy.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fetch_train
)
_generate_srv_eus(fetch_train
  "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EeTraj.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fetch_train
)
_generate_srv_eus(fetch_train
  "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/JointTraj.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fetch_train
)
_generate_srv_eus(fetch_train
  "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EePose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fetch_train
)

### Generating Module File
_generate_module_eus(fetch_train
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fetch_train
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(fetch_train_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(fetch_train_generate_messages fetch_train_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EeRpy.srv" NAME_WE)
add_dependencies(fetch_train_generate_messages_eus _fetch_train_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EeTraj.srv" NAME_WE)
add_dependencies(fetch_train_generate_messages_eus _fetch_train_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/JointTraj.srv" NAME_WE)
add_dependencies(fetch_train_generate_messages_eus _fetch_train_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EePose.srv" NAME_WE)
add_dependencies(fetch_train_generate_messages_eus _fetch_train_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fetch_train_geneus)
add_dependencies(fetch_train_geneus fetch_train_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fetch_train_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(fetch_train
  "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EeRpy.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fetch_train
)
_generate_srv_lisp(fetch_train
  "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EeTraj.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fetch_train
)
_generate_srv_lisp(fetch_train
  "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/JointTraj.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fetch_train
)
_generate_srv_lisp(fetch_train
  "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EePose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fetch_train
)

### Generating Module File
_generate_module_lisp(fetch_train
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fetch_train
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(fetch_train_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(fetch_train_generate_messages fetch_train_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EeRpy.srv" NAME_WE)
add_dependencies(fetch_train_generate_messages_lisp _fetch_train_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EeTraj.srv" NAME_WE)
add_dependencies(fetch_train_generate_messages_lisp _fetch_train_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/JointTraj.srv" NAME_WE)
add_dependencies(fetch_train_generate_messages_lisp _fetch_train_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EePose.srv" NAME_WE)
add_dependencies(fetch_train_generate_messages_lisp _fetch_train_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fetch_train_genlisp)
add_dependencies(fetch_train_genlisp fetch_train_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fetch_train_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(fetch_train
  "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EeRpy.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fetch_train
)
_generate_srv_nodejs(fetch_train
  "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EeTraj.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fetch_train
)
_generate_srv_nodejs(fetch_train
  "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/JointTraj.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fetch_train
)
_generate_srv_nodejs(fetch_train
  "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EePose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fetch_train
)

### Generating Module File
_generate_module_nodejs(fetch_train
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fetch_train
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(fetch_train_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(fetch_train_generate_messages fetch_train_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EeRpy.srv" NAME_WE)
add_dependencies(fetch_train_generate_messages_nodejs _fetch_train_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EeTraj.srv" NAME_WE)
add_dependencies(fetch_train_generate_messages_nodejs _fetch_train_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/JointTraj.srv" NAME_WE)
add_dependencies(fetch_train_generate_messages_nodejs _fetch_train_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EePose.srv" NAME_WE)
add_dependencies(fetch_train_generate_messages_nodejs _fetch_train_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fetch_train_gennodejs)
add_dependencies(fetch_train_gennodejs fetch_train_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fetch_train_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(fetch_train
  "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EeRpy.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fetch_train
)
_generate_srv_py(fetch_train
  "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EeTraj.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fetch_train
)
_generate_srv_py(fetch_train
  "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/JointTraj.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fetch_train
)
_generate_srv_py(fetch_train
  "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EePose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fetch_train
)

### Generating Module File
_generate_module_py(fetch_train
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fetch_train
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(fetch_train_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(fetch_train_generate_messages fetch_train_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EeRpy.srv" NAME_WE)
add_dependencies(fetch_train_generate_messages_py _fetch_train_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EeTraj.srv" NAME_WE)
add_dependencies(fetch_train_generate_messages_py _fetch_train_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/JointTraj.srv" NAME_WE)
add_dependencies(fetch_train_generate_messages_py _fetch_train_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cstx2/fetchRobot/catkin_ws/src/fetch_train/srv/EePose.srv" NAME_WE)
add_dependencies(fetch_train_generate_messages_py _fetch_train_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fetch_train_genpy)
add_dependencies(fetch_train_genpy fetch_train_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fetch_train_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fetch_train)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fetch_train
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(fetch_train_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(fetch_train_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET trajectory_msgs_generate_messages_cpp)
  add_dependencies(fetch_train_generate_messages_cpp trajectory_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fetch_train)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fetch_train
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(fetch_train_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(fetch_train_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET trajectory_msgs_generate_messages_eus)
  add_dependencies(fetch_train_generate_messages_eus trajectory_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fetch_train)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fetch_train
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(fetch_train_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(fetch_train_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET trajectory_msgs_generate_messages_lisp)
  add_dependencies(fetch_train_generate_messages_lisp trajectory_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fetch_train)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fetch_train
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(fetch_train_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(fetch_train_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET trajectory_msgs_generate_messages_nodejs)
  add_dependencies(fetch_train_generate_messages_nodejs trajectory_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fetch_train)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fetch_train\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fetch_train
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(fetch_train_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(fetch_train_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET trajectory_msgs_generate_messages_py)
  add_dependencies(fetch_train_generate_messages_py trajectory_msgs_generate_messages_py)
endif()
