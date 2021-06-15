#!/bin/bash

docker build -t mkdocs .

if [ ! -d "`pwd`/docs/myprj" ];then
   docker run -w /docs/ -v `pwd`/docs:/docs --rm -ti mkdocs sh -c 'mkdocs new myprj'
fi
docker run -p8000:8000 -w /docs/myprj -v `pwd`/docs:/docs --rm -ti mkdocs sh -c 'mkdocs serve --dev-addr=0.0.0.0:8000'

