cmake_minimum_required(VERSION 3.0)
project(calculator)

# Declaration of source files
set(SOURCES main.c calculator.c)

# Create the static library
add_library(calculator_lib STATIC ${SOURCES})

# Create the executable file linked with the static library
add_executable(calculator main.c)

# Link the executable with the static library
target_link_libraries(calculator PRIVATE calculator_lib)
