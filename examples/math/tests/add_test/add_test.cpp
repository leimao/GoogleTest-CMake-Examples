#include <gtest/gtest.h>

#include "math.hpp"

TEST(AddTest1, BasicAssertions)
{
    // Expect equality.
    EXPECT_EQ(1 + 2, add(1, 2));
}

TEST(AddTest2, BasicAssertions)
{
    // Expect equality.
    EXPECT_EQ(3 + 4, add(3, 4));
}