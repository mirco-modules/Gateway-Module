#!/bin/bash

# Название Docker контейнера
CONTAINER_NAME="productms-consul-1"

# Проверка наличия работающего контейнера
if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    echo "Docker контейнер $CONTAINER_NAME уже запущен."
else
    echo "Docker контейнер $CONTAINER_NAME не запущен. Запускаю $CONTAINER_NAME контейнер."
    docker start $CONTAINER_NAME
fi
