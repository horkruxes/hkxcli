cmake_minimum_required(VERSION 3.10)
project(hkxcli VERSION 0.1 LANGUAGES C)

# Environment variables
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED True)

# Configuration
configure_file(hkxcli_config.h.in hkxcli_config.h)

# Target 
add_executable(hkxcli hkxcli.c)
target_include_directories(hkxcli PUBLIC "${PROJECT_BINARY_DIR}")

