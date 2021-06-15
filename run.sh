#!/bin/bash

docker build -t mkdocs .

if [ -d "`pwd`:/docs/" 
docker run --rm -ti -p8000:8000 -v `pwd`:/docs

