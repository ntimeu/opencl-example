cmake_minimum_required(VERSION 3.1)
project(opencl-example CXX)

find_program(CCACHE ccache)
if(CCACHE)
    set_property(GLOBAL PROPERTY RULE_LAUNCH_COMPILE ccache)
    set_property(GLOBAL PROPERTY RULE_LAUNCH_LINK ccache)
    message(STATUS "CCache found and enabled.")
elseif(CCACHE-NOTFOUND)
    message(STATUS "CCache not found. You may experience slow builds.")
endif()

find_package(OpenCL REQUIRED)
find_package(Boost COMPONENTS program_options REQUIRED)

add_subdirectory(src output)
