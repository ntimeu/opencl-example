set(sources
    example.cpp)

add_executable(example ${sources})

target_compile_options(example
    PRIVATE -std=c++14 -Wall -Wextra -Werror -Wpedantic -Wold-style-cast)
    
target_include_directories(example
    PRIVATE ${OpenCL_INCLUDE_DIRS}
    PRIVATE ${Boost_INCLUDE_DIRS})
    
target_link_libraries(example
    ${OpenCL_LIBRARIES}
    ${Boost_LIBRARIES})
