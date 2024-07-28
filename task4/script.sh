#!/usr/bin/env bash

#Создайте архив (tar) из нескольких файлов и директорий, а затем распакуйте его.
#Убедитесь, что файлы восстановлены корректно.

mkdir "FilesToArchive"

cp -r ../task1 FilesToArchive
ls FilesToArchive
echo " -- Archiving files --"
tar -czvf archive.tar.gz FilesToArchive

rm -rf FilesToArchive

mkdir UnarchivedFiles
echo " -- Unarchiving files --"
tar -C UnarchivedFiles -xzvf archive.tar.gz

ls UnarchivedFiles/