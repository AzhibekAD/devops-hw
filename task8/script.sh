#!/usr/bin/env bash

#Напишите скрипт, который будет генерировать случайные пароли заданной длины и сохранять их в файл.

passFile="passwords.txt"

if [ -e "$passFile" ]; then
  echo "Файл существует"
else touch $passFile
fi

length=12
password=$(openssl rand -base64 $length)

echo "$password" >> $passFile
echo "Новый пароль: $password"

passwords=$(cat $passFile)
echo "Все пароли: $passwords"
