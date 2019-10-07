add_library(PCA9685Lib PCA9685.cpp)

target_include_directories(PCA9685Lib
INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}
)
