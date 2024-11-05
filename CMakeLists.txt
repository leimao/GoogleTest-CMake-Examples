cmake_minimum_required(VERSION 3.28)

project(GoogleTest-Examples VERSION 0.0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Find GoogleTest
find_package(GTest REQUIRED)

# Enable testing at the root level so that we could run all the tests at once
enable_testing()

add_subdirectory(examples)
