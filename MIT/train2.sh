#!/bin/bash
n=$(( RANDOM % 100 ))

if [[ n -eq 42 ]]; then
	echo "somthing went wrong"
	>&2 echo "the error was using magic number"
	exit 1
fi
echo "everything went according to plan"
