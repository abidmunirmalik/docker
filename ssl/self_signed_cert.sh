#!/bin/bash
#
# This will generate self-signed certificate

openssl req -new -newkey rsa:2048 -days 365 -nodes -x509 -keyout docker.key -out docker.crt

