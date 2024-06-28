/**
 * Copyright 2024 RobotX
 */

#include <iostream>

#include "torch/torch.h"

int main() {
  std::cout << "Hello, World!" << std::endl;

  torch::Tensor tensor = torch::eye(3);
  std::cout << tensor << std::endl;
}
