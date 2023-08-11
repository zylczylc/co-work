#!/bin/bash

#要查找的文件夹路径
search_path="~/Desktop/missing"
find "$search_path" -type -f -printf "%T@ %p\n" |
	sort -rn |
	awk '{printf substr($0, index($0,$2))}'
