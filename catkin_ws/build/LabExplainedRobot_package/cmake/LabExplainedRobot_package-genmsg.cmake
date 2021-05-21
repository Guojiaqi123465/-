# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "LabExplainedRobot_package: 1 messages, 0 services")

set(MSG_I_FLAGS "-ILabExplainedRobot_package:/home/robot/catkin_ws/src/LabExplainedRobot_package/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(LabExplainedRobot_package_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/robot/catkin_ws/src/LabExplainedRobot_package/msg/face_detect.msg" NAME_WE)
add_custom_target(_LabExplainedRobot_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "LabExplainedRobot_package" "/home/robot/catkin_ws/src/LabExplainedRobot_package/msg/face_detect.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(LabExplainedRobot_package
  "/home/robot/catkin_ws/src/LabExplainedRobot_package/msg/face_detect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/LabExplainedRobot_package
)

### Generating Services

### Generating Module File
_generate_module_cpp(LabExplainedRobot_package
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/LabExplainedRobot_package
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(LabExplainedRobot_package_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(LabExplainedRobot_package_generate_messages LabExplainedRobot_package_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/catkin_ws/src/LabExplainedRobot_package/msg/face_detect.msg" NAME_WE)
add_dependencies(LabExplainedRobot_package_generate_messages_cpp _LabExplainedRobot_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(LabExplainedRobot_package_gencpp)
add_dependencies(LabExplainedRobot_package_gencpp LabExplainedRobot_package_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS LabExplainedRobot_package_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(LabExplainedRobot_package
  "/home/robot/catkin_ws/src/LabExplainedRobot_package/msg/face_detect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/LabExplainedRobot_package
)

### Generating Services

### Generating Module File
_generate_module_eus(LabExplainedRobot_package
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/LabExplainedRobot_package
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(LabExplainedRobot_package_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(LabExplainedRobot_package_generate_messages LabExplainedRobot_package_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/catkin_ws/src/LabExplainedRobot_package/msg/face_detect.msg" NAME_WE)
add_dependencies(LabExplainedRobot_package_generate_messages_eus _LabExplainedRobot_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(LabExplainedRobot_package_geneus)
add_dependencies(LabExplainedRobot_package_geneus LabExplainedRobot_package_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS LabExplainedRobot_package_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(LabExplainedRobot_package
  "/home/robot/catkin_ws/src/LabExplainedRobot_package/msg/face_detect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/LabExplainedRobot_package
)

### Generating Services

### Generating Module File
_generate_module_lisp(LabExplainedRobot_package
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/LabExplainedRobot_package
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(LabExplainedRobot_package_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(LabExplainedRobot_package_generate_messages LabExplainedRobot_package_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/catkin_ws/src/LabExplainedRobot_package/msg/face_detect.msg" NAME_WE)
add_dependencies(LabExplainedRobot_package_generate_messages_lisp _LabExplainedRobot_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(LabExplainedRobot_package_genlisp)
add_dependencies(LabExplainedRobot_package_genlisp LabExplainedRobot_package_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS LabExplainedRobot_package_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(LabExplainedRobot_package
  "/home/robot/catkin_ws/src/LabExplainedRobot_package/msg/face_detect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/LabExplainedRobot_package
)

### Generating Services

### Generating Module File
_generate_module_nodejs(LabExplainedRobot_package
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/LabExplainedRobot_package
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(LabExplainedRobot_package_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(LabExplainedRobot_package_generate_messages LabExplainedRobot_package_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/catkin_ws/src/LabExplainedRobot_package/msg/face_detect.msg" NAME_WE)
add_dependencies(LabExplainedRobot_package_generate_messages_nodejs _LabExplainedRobot_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(LabExplainedRobot_package_gennodejs)
add_dependencies(LabExplainedRobot_package_gennodejs LabExplainedRobot_package_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS LabExplainedRobot_package_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(LabExplainedRobot_package
  "/home/robot/catkin_ws/src/LabExplainedRobot_package/msg/face_detect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/LabExplainedRobot_package
)

### Generating Services

### Generating Module File
_generate_module_py(LabExplainedRobot_package
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/LabExplainedRobot_package
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(LabExplainedRobot_package_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(LabExplainedRobot_package_generate_messages LabExplainedRobot_package_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/catkin_ws/src/LabExplainedRobot_package/msg/face_detect.msg" NAME_WE)
add_dependencies(LabExplainedRobot_package_generate_messages_py _LabExplainedRobot_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(LabExplainedRobot_package_genpy)
add_dependencies(LabExplainedRobot_package_genpy LabExplainedRobot_package_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS LabExplainedRobot_package_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/LabExplainedRobot_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/LabExplainedRobot_package
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(LabExplainedRobot_package_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/LabExplainedRobot_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/LabExplainedRobot_package
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(LabExplainedRobot_package_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/LabExplainedRobot_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/LabExplainedRobot_package
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(LabExplainedRobot_package_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/LabExplainedRobot_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/LabExplainedRobot_package
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(LabExplainedRobot_package_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/LabExplainedRobot_package)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/LabExplainedRobot_package\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/LabExplainedRobot_package
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(LabExplainedRobot_package_generate_messages_py std_msgs_generate_messages_py)
endif()
