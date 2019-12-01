#!/bin/bash
#
# This script accept container name as argument
# 
docker container run -d -it --name $1 centos-custom:v1
