#!/bin/bash

docker build --rm -t=172.18.82.3:5000/kalix/app2 .
docker push 172.18.82.3:5000/kalix/app2
