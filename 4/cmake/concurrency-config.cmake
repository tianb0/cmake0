get_filename_component(SELF_DIR ${CMAKE_CURRENT_LIST_DIR} PATH)

include(include(CMakeFindDependencyMacro))

find_dependency(Boost REQUIRED)

include(${SELF_DIR}/cmake/Concurrency.cmake)
