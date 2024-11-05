cmake_minimum_required(VERSION 3.28)

project(Math VERSION 0.0.1 LANGUAGES CXX)

# Set the CUDA architecture to compile the code for
# https://cmake.org/cmake/help/latest/prop_tgt/CUDA_ARCHITECTURES.html
add_library(math SHARED src/math.cpp)
target_include_directories(math PUBLIC include)

add_subdirectory(tests)