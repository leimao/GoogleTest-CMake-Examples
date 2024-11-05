cmake_minimum_required(VERSION 3.28)

find_package(GTest REQUIRED)

add_executable(subtract_test subtract_test.cpp)
target_link_libraries(subtract_test GTest::gtest GTest::gtest_main math)

add_test(AllSubtractTests subtract_test)