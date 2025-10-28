cmake_minimum_required(VERSION 3.30)

#set(CMAKE_INSTALL_PREFIX "${CMAKE_CURRENT_BINARY_DIR}/install")

project(mytool VERSION 3.0 LANGUAGES CXX)

add_executable(mytool main.cpp)

install(TARGETS mytool DESTINATION bin)
