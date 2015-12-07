#!/bin/bash

while [[ $# > 1 ]]
do
key="$1"

case $key in
    -p|--password)
    MYSQL_ROOT_PASSWORD="$2"
    echo $MYSQL_ROOT_PASSWORD
    shift
    ;;
    *)
    echo "Parameter $1 unknown"
    exit 1
    ;;
esac
shift
done

if [ -z $MYSQL_ROOT_PASSWORD ]; then
    echo "Please, specify a valid password for MariaDB providing the parameter -p password"
    exit 1
fi

docker build --rm -t web-mariadb . &&
docker run -d --name web-mariadb -p 3306:3306 -e MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD web-mariadb
