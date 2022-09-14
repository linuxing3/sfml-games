cmake_minimum_required(VERSION 3.0.0)

project(game)

aux_source_directory(. DIR_SRCS)

add_executable(game ${DIR_SRCS})
target_link_libraries(game PRIVATE sfml-graphics sfml-window sfml-system m)
