#!/bin/bash

g++ -std=c++11 -c main.cpp                                         # to compile.
g++ main.o -o main.exe -lsfml-graphics -lsfml-window -lsfml-system # to link.
