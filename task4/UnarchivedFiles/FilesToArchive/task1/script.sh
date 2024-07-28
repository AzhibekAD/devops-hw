#!/usr/bin/env bash

#Создайте директорию с именем "MyDirectory" и в этой директории создайте файл "MyFile.txt".
#Затем выведите список файлов и директорий в текущем каталоге.

mkdir "MyDirectory"

cd MyDirectory || exit

touch "MyFile.txt"

ls -a