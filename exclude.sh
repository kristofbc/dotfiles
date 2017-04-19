#!/usr/bin/env bash

# Usage: ./exclude.sh [FILE NAMES]

for file in $*
do
	echo $file >> bootstrap-exclude.txt
done

echo "Now excluding these files/folders from bootstrap:"
echo "$(<bootstrap-exclude.txt)" 
