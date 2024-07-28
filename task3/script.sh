#!/usr/bin/env bash

#Напишите скрипт, который будет искать все файлы в текущей директории и ее поддиректориях, содержащие слово "ключевое_слово".
#Выведите список найденных файлов.

if [ ! -d "CopiedFiles" ]; then
  mkdir CopiedFiles
else rm -rf CopiedFiles; mkdir CopiedFiles
fi

cp -r ../task1/ "CopiedFiles"

echo "ключевое_слово" > "fileWithWord.txt"

wordToFind="ключевое_слово"

grep -R -l "$wordToFind" .