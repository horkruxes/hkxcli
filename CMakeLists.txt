cmake_minimum_required(VERSION 3.10)
project(hkxcli VERSION 0.1 LANGUAGES C)

# Environment variables
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED True)
set(PROJECT_SOURCE_DIR src)
set(PROJECT_DEPS_DIR deps)

# Config
configure_file("${PROJECT_SOURCE_DIR}/hkxcli_config.h.in" hkxcli_config.h)

add_executable(hkxcli "${PROJECT_SOURCE_DIR}/hkxcli.c")

# Libraries
add_subdirectory("${PROJECT_DEPS_DIR}")
target_link_libraries(hkxcli PUBLIC argtable)

target_include_directories(hkxcli PUBLIC 
    "${PROJECT_BINARY_DIR}"
    "${PROJECT_DEPS_DIR}/argtable"
)
