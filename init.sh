#!/bin/bash

rm */build.sh
rm */run.sh
rm */CMakeLists.txt
rm -rf */build

for dir in */; do
	if [ -d "$dir" ]; then
		echo "${dir}"
		cp ./build.sh "${dir}build.sh"
		cp ./CMakeLists.txt "${dir}CMakeLists.txt"
	fi
done
