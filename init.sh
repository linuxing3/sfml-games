#!/bin/bash

rm */build.sh
rm */CMakeLists.txt

for dir in */; do
	if [ -d "$dir" ]; then
		echo "${dir}"
		cp ./build.sh "${dir}build.sh"
		cp ./CMakeLists.txt "${dir}CMakeLists.txt"
	fi
done
