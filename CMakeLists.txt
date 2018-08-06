project(varcol)

cmake_minimum_required (VERSION 3.11.0)
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

enable_language("CUDA")
find_package(Boost COMPONENTS log)
find_package(fmt)
find_package(Poco COMPONENTS Foundation JSON)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
# set (CMAKE_CUDA_FLAGS ”-arch=sm_35”) 
add_executable(varcol main.cpp varcolumn.h varcolumn.cu varcoltmpl.cuh)

target_link_libraries(varcol PUBLIC
  Boost::boost
  fmt::fmt
  Poco::Foundation
  Poco::JSON
  )

