#!/usr/bin/env bash

#Напишите скрипт, который будет регулярно (например, каждую неделю) создавать резервные копии
#определенных директорий и сохранять их с датой в имени файла.

mkdir "DirToBackUp"

tar -czvf "backup_$(date +%Y%m%d).tar.gz" "DirToBackUp"

#directory=pwd
#(crontab -l 2>/dev/null; echo "0 0 * * 0 $directory/script.sh") | crontab -