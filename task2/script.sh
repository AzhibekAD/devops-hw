#!/usr/bin/env bash

#Скопируйте все файлы с расширением ".txt" из одной директории в другую.
#Затем выведите список скопированных файлов.

mkdir "FirstDir"
mkdir "SecondDir"

touch FirstDir/file.txt
touch FirstDir/secondFile.txt

filesToCopy=($ls FirstDir/*.txt)

cp FirstDir/*.txt SecondDir

cd SecondDir

if [ -n "$filesToCopy" ]; then
  ls *.txt
fi