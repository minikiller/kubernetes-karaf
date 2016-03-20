#!/bin/bash

docker build --rm -t=192.168.1.130:5000/kalix/app1 . 
docker push 192.168.1.130:5000/kalix/app1

