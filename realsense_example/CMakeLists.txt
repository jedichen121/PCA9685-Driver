# License: Apache 2.0. See LICENSE file in root directory.
# Copyright(c) 2019 Intel Corporation. All Rights Reserved.
#  minimum required cmake version: 3.1.0
cmake_minimum_required(VERSION 3.1.0)

project(RealsenseExamplesPose)

add_executable(rs-pose rs-pose.cpp)
set_property(TARGET rs-pose PROPERTY CXX_STANDARD 11)
target_link_libraries(rs-pose realsense2)


