find_library(OPENCL_LIBRARY OpenCL)
find_path(OPENCL_INCLUDE_DIR CL/cl.hpp)

set(OPENCL_LIBRARIES ${OPENCL_LIBRARY})
set(OPENCL_INCLUDE_DIRS ${OPENCL_INCLUDE_DIR})
