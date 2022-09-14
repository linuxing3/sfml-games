#!/bin/bash

set -e

for dir in */; do
	if [ -d "$dir" ]; then
		if [ -e "${dir}build.sh" ]; then
			rm "${dir}build.sh"
		fi
		# ln -s build.sh "${dir}build.sh"
	fi
done
