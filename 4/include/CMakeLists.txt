project(${CMAKE_PROJECT_NAME})

find_package(Boost REQUIRED)

# header only lib
# add_library(concurrency
#   INTERFACE
#   concurrency/messagebuffer.h
#   concurrency/threadpool.h
#   concurrency/workerthread.h)

add_library(concurrency INTERFACE)

set(CONCURRENCY_INTERFACE_FILES
  concurrency/messagebuffer.h
  concurrency/threadpool.h
  concurrency/workerthread.h)

# target_sources(concurrency
#   INTERFACE
#   concurrency/messagebuffer.h
#   concurrency/threadpool.h
#   concurrency/workerthread.h)

target_link_libraries(concurrency
  INTERFACE
  pthread
  Boost::boost)

# target_include_directories(concurrency
#   INTERFACE
#   ${CMAKE_CURRENT_SOURCE_DIR})

target_include_directories(concurrency
  INTERFACE
    $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/../include>)

# for install

install(TARGETS concurrency EXPORT ${CMAKE_PROJECT_NAME} DESTINATION
  ${CMAKE_INSTALL_LIBDIR}/concurrency/cmake)

install(FILES ${CONCURRENCY_INTERFACE_FILES} DESTINATION
  ${CMAKE_INSTALL_INCLUDEDIR}/concurrency)
