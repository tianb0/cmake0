# same name as the root
project(SimpleCmakeExample)

# static library
add_library(simplecmake printhello.cpp)
# shared libracy
# add_library(simplecmake SHARED printhello.cpp)


target_include_directories(simplecmake
  PUBLIC
  ${CMAKE_CURRENT_SOURCE_DIR}/../include)
