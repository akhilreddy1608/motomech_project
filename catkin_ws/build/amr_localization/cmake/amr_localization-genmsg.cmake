# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "amr_localization: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(amr_localization_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/user/catkin_ws/src/amr_localization/srv/Poi_message.srv" NAME_WE)
add_custom_target(_amr_localization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "amr_localization" "/home/user/catkin_ws/src/amr_localization/srv/Poi_message.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(amr_localization
  "/home/user/catkin_ws/src/amr_localization/srv/Poi_message.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/amr_localization
)

### Generating Module File
_generate_module_cpp(amr_localization
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/amr_localization
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(amr_localization_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(amr_localization_generate_messages amr_localization_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/amr_localization/srv/Poi_message.srv" NAME_WE)
add_dependencies(amr_localization_generate_messages_cpp _amr_localization_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(amr_localization_gencpp)
add_dependencies(amr_localization_gencpp amr_localization_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS amr_localization_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(amr_localization
  "/home/user/catkin_ws/src/amr_localization/srv/Poi_message.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/amr_localization
)

### Generating Module File
_generate_module_eus(amr_localization
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/amr_localization
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(amr_localization_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(amr_localization_generate_messages amr_localization_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/amr_localization/srv/Poi_message.srv" NAME_WE)
add_dependencies(amr_localization_generate_messages_eus _amr_localization_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(amr_localization_geneus)
add_dependencies(amr_localization_geneus amr_localization_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS amr_localization_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(amr_localization
  "/home/user/catkin_ws/src/amr_localization/srv/Poi_message.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/amr_localization
)

### Generating Module File
_generate_module_lisp(amr_localization
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/amr_localization
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(amr_localization_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(amr_localization_generate_messages amr_localization_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/amr_localization/srv/Poi_message.srv" NAME_WE)
add_dependencies(amr_localization_generate_messages_lisp _amr_localization_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(amr_localization_genlisp)
add_dependencies(amr_localization_genlisp amr_localization_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS amr_localization_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(amr_localization
  "/home/user/catkin_ws/src/amr_localization/srv/Poi_message.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/amr_localization
)

### Generating Module File
_generate_module_nodejs(amr_localization
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/amr_localization
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(amr_localization_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(amr_localization_generate_messages amr_localization_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/amr_localization/srv/Poi_message.srv" NAME_WE)
add_dependencies(amr_localization_generate_messages_nodejs _amr_localization_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(amr_localization_gennodejs)
add_dependencies(amr_localization_gennodejs amr_localization_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS amr_localization_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(amr_localization
  "/home/user/catkin_ws/src/amr_localization/srv/Poi_message.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amr_localization
)

### Generating Module File
_generate_module_py(amr_localization
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amr_localization
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(amr_localization_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(amr_localization_generate_messages amr_localization_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/amr_localization/srv/Poi_message.srv" NAME_WE)
add_dependencies(amr_localization_generate_messages_py _amr_localization_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(amr_localization_genpy)
add_dependencies(amr_localization_genpy amr_localization_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS amr_localization_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/amr_localization)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/amr_localization
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(amr_localization_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/amr_localization)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/amr_localization
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(amr_localization_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/amr_localization)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/amr_localization
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(amr_localization_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/amr_localization)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/amr_localization
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(amr_localization_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amr_localization)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amr_localization\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amr_localization
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(amr_localization_generate_messages_py std_msgs_generate_messages_py)
endif()
