cmake_minimum_required(VERSION 3.28)

find_package(GTest REQUIRED)

add_executable(add_test add_test.cpp)
target_link_libraries(add_test GTest::gtest GTest::gtest_main math)

add_test(AllAddTests add_test)