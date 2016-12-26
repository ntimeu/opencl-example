set(sources
    example.cpp)

add_executable(example ${sources})
target_include_directories(example BEFORE
    PUBLIC ${OpenCL_INCLUDE_DIRS}
    PUBLIC ${Boost_INCLUDE_DIRS})
target_link_libraries(example
    ${OpenCL_LIBRARIES}
    ${Boost_LIBRARIES})
