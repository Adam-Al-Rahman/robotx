/**
 * Copyright 2024 RobotX
 */

#include <string>

#include "gtest/gtest.h"

std::string testx() { return "TEST SUCCESS"; }

TEST(TT, XT) { EXPECT_EQ(testx(), "TEST SUCCESS"); }
