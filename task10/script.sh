#!/usr/bin/env bash

#Напишите скрипт, который будет проверять наличие обновлений системы и, если они доступны, автоматически устанавливать их.

sudo apt update

updates=$(sudo apt list --upgradable)

if [[ $updates == *"upgradable"* ]]; then
    sudo apt upgrade -y
else
    echo "Обновлений нет."
fi