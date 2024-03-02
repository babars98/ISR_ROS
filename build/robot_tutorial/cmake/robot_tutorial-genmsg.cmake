# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robot_tutorial: 0 messages, 2 services")

set(MSG_I_FLAGS "-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robot_tutorial_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/vboxuser/catkin_ws/src/robot_tutorial/srv/OddEvenCheck.srv" NAME_WE)
add_custom_target(_robot_tutorial_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_tutorial" "/home/vboxuser/catkin_ws/src/robot_tutorial/srv/OddEvenCheck.srv" ""
)

get_filename_component(_filename "/home/vboxuser/catkin_ws/src/robot_tutorial/srv/ImageAngle.srv" NAME_WE)
add_custom_target(_robot_tutorial_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_tutorial" "/home/vboxuser/catkin_ws/src/robot_tutorial/srv/ImageAngle.srv" "sensor_msgs/Image:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(robot_tutorial
  "/home/vboxuser/catkin_ws/src/robot_tutorial/srv/OddEvenCheck.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_tutorial
)
_generate_srv_cpp(robot_tutorial
  "/home/vboxuser/catkin_ws/src/robot_tutorial/srv/ImageAngle.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_tutorial
)

### Generating Module File
_generate_module_cpp(robot_tutorial
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_tutorial
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robot_tutorial_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robot_tutorial_generate_messages robot_tutorial_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vboxuser/catkin_ws/src/robot_tutorial/srv/OddEvenCheck.srv" NAME_WE)
add_dependencies(robot_tutorial_generate_messages_cpp _robot_tutorial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/catkin_ws/src/robot_tutorial/srv/ImageAngle.srv" NAME_WE)
add_dependencies(robot_tutorial_generate_messages_cpp _robot_tutorial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_tutorial_gencpp)
add_dependencies(robot_tutorial_gencpp robot_tutorial_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_tutorial_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(robot_tutorial
  "/home/vboxuser/catkin_ws/src/robot_tutorial/srv/OddEvenCheck.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_tutorial
)
_generate_srv_eus(robot_tutorial
  "/home/vboxuser/catkin_ws/src/robot_tutorial/srv/ImageAngle.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_tutorial
)

### Generating Module File
_generate_module_eus(robot_tutorial
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_tutorial
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robot_tutorial_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robot_tutorial_generate_messages robot_tutorial_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vboxuser/catkin_ws/src/robot_tutorial/srv/OddEvenCheck.srv" NAME_WE)
add_dependencies(robot_tutorial_generate_messages_eus _robot_tutorial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/catkin_ws/src/robot_tutorial/srv/ImageAngle.srv" NAME_WE)
add_dependencies(robot_tutorial_generate_messages_eus _robot_tutorial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_tutorial_geneus)
add_dependencies(robot_tutorial_geneus robot_tutorial_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_tutorial_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(robot_tutorial
  "/home/vboxuser/catkin_ws/src/robot_tutorial/srv/OddEvenCheck.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_tutorial
)
_generate_srv_lisp(robot_tutorial
  "/home/vboxuser/catkin_ws/src/robot_tutorial/srv/ImageAngle.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_tutorial
)

### Generating Module File
_generate_module_lisp(robot_tutorial
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_tutorial
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robot_tutorial_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robot_tutorial_generate_messages robot_tutorial_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vboxuser/catkin_ws/src/robot_tutorial/srv/OddEvenCheck.srv" NAME_WE)
add_dependencies(robot_tutorial_generate_messages_lisp _robot_tutorial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/catkin_ws/src/robot_tutorial/srv/ImageAngle.srv" NAME_WE)
add_dependencies(robot_tutorial_generate_messages_lisp _robot_tutorial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_tutorial_genlisp)
add_dependencies(robot_tutorial_genlisp robot_tutorial_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_tutorial_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(robot_tutorial
  "/home/vboxuser/catkin_ws/src/robot_tutorial/srv/OddEvenCheck.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_tutorial
)
_generate_srv_nodejs(robot_tutorial
  "/home/vboxuser/catkin_ws/src/robot_tutorial/srv/ImageAngle.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_tutorial
)

### Generating Module File
_generate_module_nodejs(robot_tutorial
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_tutorial
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robot_tutorial_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robot_tutorial_generate_messages robot_tutorial_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vboxuser/catkin_ws/src/robot_tutorial/srv/OddEvenCheck.srv" NAME_WE)
add_dependencies(robot_tutorial_generate_messages_nodejs _robot_tutorial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/catkin_ws/src/robot_tutorial/srv/ImageAngle.srv" NAME_WE)
add_dependencies(robot_tutorial_generate_messages_nodejs _robot_tutorial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_tutorial_gennodejs)
add_dependencies(robot_tutorial_gennodejs robot_tutorial_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_tutorial_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(robot_tutorial
  "/home/vboxuser/catkin_ws/src/robot_tutorial/srv/OddEvenCheck.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_tutorial
)
_generate_srv_py(robot_tutorial
  "/home/vboxuser/catkin_ws/src/robot_tutorial/srv/ImageAngle.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_tutorial
)

### Generating Module File
_generate_module_py(robot_tutorial
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_tutorial
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robot_tutorial_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robot_tutorial_generate_messages robot_tutorial_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vboxuser/catkin_ws/src/robot_tutorial/srv/OddEvenCheck.srv" NAME_WE)
add_dependencies(robot_tutorial_generate_messages_py _robot_tutorial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/catkin_ws/src/robot_tutorial/srv/ImageAngle.srv" NAME_WE)
add_dependencies(robot_tutorial_generate_messages_py _robot_tutorial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_tutorial_genpy)
add_dependencies(robot_tutorial_genpy robot_tutorial_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_tutorial_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_tutorial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_tutorial
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(robot_tutorial_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(robot_tutorial_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_tutorial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_tutorial
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(robot_tutorial_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(robot_tutorial_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_tutorial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_tutorial
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(robot_tutorial_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(robot_tutorial_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_tutorial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_tutorial
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(robot_tutorial_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(robot_tutorial_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_tutorial)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_tutorial\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_tutorial
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(robot_tutorial_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(robot_tutorial_generate_messages_py std_msgs_generate_messages_py)
endif()
