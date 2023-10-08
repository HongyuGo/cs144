#cmake_minimum_required(VERSION 3.24)
#project(my_project)
#add_executable(my_program ./byte_stream.cc ./byte_stream_helpers.cc)
file(GLOB LIB_SOURCES "*.cc")

add_library(minnow_debug STATIC ${LIB_SOURCES})

add_library(minnow_sanitized EXCLUDE_FROM_ALL STATIC ${LIB_SOURCES})
target_compile_options(minnow_sanitized PUBLIC ${SANITIZING_FLAGS})

add_library(minnow_optimized EXCLUDE_FROM_ALL STATIC ${LIB_SOURCES})
target_compile_options(minnow_optimized PUBLIC "-O2")
