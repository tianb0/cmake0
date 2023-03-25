cmake_minimum_required(VERSION 3.15)
project(SimpleCmakeExample)

# for ccls
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_subdirectory(include)
add_subdirectory(src)

option(BUILD_EXAMPLES "Whether to build examples" ON)

if (BUILD_EXAMPLES)
  message(STATUS "Building examples...")
  add_subdirectory(example)
endif()

