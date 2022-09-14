#!/bin/bash

rm -rf build
mkdir build

/bin/cmake --no-warn-unused-cli -DCMAKE_BUILD_TYPE:STRING=Debug -S. -B./build -G "Unix Makefiles" -DCMAKE_EXPORTS_COMPILE_COMMANDS=1 -DCMAKE_C_COMPILER=/bin/clang -DCMAKE_CXX_COMPILER=/bin/clang++

/bin/cmake --build ./build --config Debug -j 10 --

./build/game

# if use Makefile
# g++ -std=c++11 -c main.cpp && g++ main.o -o main.exe -lsfml-graphics -lsfml-window -lsfml-system -lm
