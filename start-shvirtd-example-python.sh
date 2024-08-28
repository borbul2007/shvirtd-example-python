#! /bin/bash

cd /opt
git pull https://github.com/borbul2007/shvirtd-example-python.git && cd shvirtd-example-python
docker compose up -d
docker cp script.sql shvirtd-example-python-db-1:/script.sql
docker exec -t shvirtd-example-python-db-1 /bin/sh -c 'mysql -uroot -pYtReWq4321 < script.sql'
