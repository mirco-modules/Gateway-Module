#!/bin/bash

PROJECT_NAME="gateway"
PROJECT_VERSION="1.0.0"

# Директория проекта
PROJECT_DIR="C:\Nurislom\Projects\MicroModules\Gateway\Gateway-Module"

# Имя jar файла
JAR_FILE="$PROJECT_NAME-$PROJECT_VERSION.jar"

# Проверка наличия папки target
if [ -d "$PROJECT_DIR/target" ]; then
    echo "Папка target существует."

    # Проверка наличия jar файла
    if [ -f "$PROJECT_DIR/target/$JAR_FILE" ]; then
        echo "Jar файл существует. Запускаю jar файл."
        cd "$PROJECT_DIR/target"
        java -jar "$JAR_FILE"
    else
        echo "Jar файл отсутствует. Пакую проект и запускаю jar файл."
        cd "$PROJECT_DIR"
        mvn clean package
        java -jar "target/$JAR_FILE"
    fi
else
    echo "Папка target не существует. Пакую проект и запускаю jar файл."
    cd "$PROJECT_DIR"
    mvn clean package
    java -jar "target/$JAR_FILE"
fi
