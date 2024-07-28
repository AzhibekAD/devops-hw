#!/usr/bin/env bash

#Напишите скрипт, который будет использовать цикл for для подсчета количества файлов и директорий в текущей директории.

cp -r ../../devops-hw/task1/ ../task9
cp -r ../../devops-hw/task1/MyDirectory/ ../task9

files=0
directories=0


for item in *; do
    if [ -f "$item" ]; then
        ((files++))
    elif [ -d "$item" ]; then
        ((directories++))
    fi
done

echo "В папке $files файл(-ов) и $directories папка(-ок)."