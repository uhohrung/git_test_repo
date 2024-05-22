#!/bin/bash

dir="$1"

files=$( ls -l "$dir" | cut -c1 | grep -v "d" | wc -l )
directory=$( ls -l "$dir" | cut -c1 | grep "d" | wc -l)

echo "현재 위치: $dir"
echo "파일 $files개, 폴더 $directory개입니다."




