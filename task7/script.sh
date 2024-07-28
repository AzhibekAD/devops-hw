#!/usr/bin/env bash

#Напишите скрипт, который будет принимать текстовый файл в качестве аргумента и подсчитывать количество слов в этом файле.

text_file="file.txt"

if [ -e "$text_file" ]; then
    rm $text_file

    cat <<EOL > $text_file
    один
    два
    три
    четыре
    пять
EOL
fi

wordsNum=$(wc -w < "$text_file")

echo "Words in $text_file = $wordsNum."