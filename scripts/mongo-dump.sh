#!/bin/bash
# Reference: http://dimafeng.com/2015/05/31/docker-mongo-backup/

docker run -i --rm --link reliable_mongo:mongo -v $HOME/mongodump:/var/data mongo bash -c 'mongodump -v --host reliable_mongo:27017 --db reliable --out=/var/data'
