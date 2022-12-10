#!/usr/bin/env bash
while getopts c:p: flag
do
    case "${flag}" in
        c) container=${OPTARG};;
        p) publish=${OPTARG};;
    esac
done
echo "Container: $container";
echo "Port: $publish";
docker run -d --name $container -v $container-data:/app -p $publish:8000 williammagnuson/python-django-image:latest