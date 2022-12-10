#!/usr/bin/env bash
docker build -t williammagnuson/python-django-image:latest ../.
docker push williammagnuson/python-django-image:latest