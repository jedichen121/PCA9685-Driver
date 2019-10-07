cmake_minimum_required(VERSION 3.5)

# set the project name and version
project(Car VERSION 1.0)

# specify the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)


add_subdirectory(lib)
list(APPEND EXTRA_LIBS PCA9685Lib)


# add the executable
add_executable(test_servo test_servo.cpp)

target_link_libraries(test_servo PUBLIC ${EXTRA_LIBS})

# add the binary tree to the search path for include files
# so that we will find TutorialConfig.h
target_include_directories(test_servo PUBLIC
                           "${PROJECT_BINARY_DIR}"
                           )