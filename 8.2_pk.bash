#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "Пожалуйста, укажите директорию и расширение файлов :)"
    exit 1
fi
DIRECTORY=\$1          
RACSHIRENIE=\$2      
if [ ! -d "$DIRECTORY" ]; then
    echo "Директория не найдена! :("
    exit 1
fi
FILES=$(find "$DIRECTORY" -type f -name "*.$RACSHIRENIE")
if [ -z "$FILES" ]; then
    echo "Файлы с расширением $RACSHIRENIE не найдены. :("
else
    echo "Найденные файлы с расширением $RACSHIRENIE:"
    echo "$FILES"
fi
