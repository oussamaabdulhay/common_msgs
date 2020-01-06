# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "attitude_message: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iattitude_message:/home/osama/global_ws/src/attitude_message/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(attitude_message_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/osama/global_ws/src/attitude_message/msg/attitude.msg" NAME_WE)
add_custom_target(_attitude_message_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "attitude_message" "/home/osama/global_ws/src/attitude_message/msg/attitude.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(attitude_message
  "/home/osama/global_ws/src/attitude_message/msg/attitude.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/attitude_message
)

### Generating Services

### Generating Module File
_generate_module_cpp(attitude_message
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/attitude_message
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(attitude_message_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(attitude_message_generate_messages attitude_message_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/osama/global_ws/src/attitude_message/msg/attitude.msg" NAME_WE)
add_dependencies(attitude_message_generate_messages_cpp _attitude_message_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(attitude_message_gencpp)
add_dependencies(attitude_message_gencpp attitude_message_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS attitude_message_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(attitude_message
  "/home/osama/global_ws/src/attitude_message/msg/attitude.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/attitude_message
)

### Generating Services

### Generating Module File
_generate_module_eus(attitude_message
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/attitude_message
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(attitude_message_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(attitude_message_generate_messages attitude_message_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/osama/global_ws/src/attitude_message/msg/attitude.msg" NAME_WE)
add_dependencies(attitude_message_generate_messages_eus _attitude_message_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(attitude_message_geneus)
add_dependencies(attitude_message_geneus attitude_message_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS attitude_message_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(attitude_message
  "/home/osama/global_ws/src/attitude_message/msg/attitude.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/attitude_message
)

### Generating Services

### Generating Module File
_generate_module_lisp(attitude_message
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/attitude_message
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(attitude_message_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(attitude_message_generate_messages attitude_message_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/osama/global_ws/src/attitude_message/msg/attitude.msg" NAME_WE)
add_dependencies(attitude_message_generate_messages_lisp _attitude_message_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(attitude_message_genlisp)
add_dependencies(attitude_message_genlisp attitude_message_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS attitude_message_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(attitude_message
  "/home/osama/global_ws/src/attitude_message/msg/attitude.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/attitude_message
)

### Generating Services

### Generating Module File
_generate_module_nodejs(attitude_message
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/attitude_message
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(attitude_message_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(attitude_message_generate_messages attitude_message_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/osama/global_ws/src/attitude_message/msg/attitude.msg" NAME_WE)
add_dependencies(attitude_message_generate_messages_nodejs _attitude_message_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(attitude_message_gennodejs)
add_dependencies(attitude_message_gennodejs attitude_message_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS attitude_message_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(attitude_message
  "/home/osama/global_ws/src/attitude_message/msg/attitude.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/attitude_message
)

### Generating Services

### Generating Module File
_generate_module_py(attitude_message
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/attitude_message
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(attitude_message_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(attitude_message_generate_messages attitude_message_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/osama/global_ws/src/attitude_message/msg/attitude.msg" NAME_WE)
add_dependencies(attitude_message_generate_messages_py _attitude_message_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(attitude_message_genpy)
add_dependencies(attitude_message_genpy attitude_message_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS attitude_message_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/attitude_message)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/attitude_message
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(attitude_message_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/attitude_message)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/attitude_message
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(attitude_message_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/attitude_message)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/attitude_message
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(attitude_message_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/attitude_message)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/attitude_message
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(attitude_message_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/attitude_message)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/attitude_message\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/attitude_message
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(attitude_message_generate_messages_py std_msgs_generate_messages_py)
endif()
