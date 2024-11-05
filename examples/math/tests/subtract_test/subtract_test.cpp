#include <gtest/gtest.h>

#include "math.hpp"

TEST(SubtractTest1, BasicAssertions)
{
    // Expect equality.
    EXPECT_EQ(1 - 2, subtract(1, 2));
}

TEST(SubtractTest2, BasicAssertions)
{
    // Expect equality.
    EXPECT_EQ(3 - 4, subtract(3, 4));
}