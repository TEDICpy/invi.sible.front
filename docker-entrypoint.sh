#!/bin/bash -e
echo -e "\n-----------------------"
echo -e " Corriendo npm install"
echo -e "-----------------------\n"
cd /usr/src/app && /usr/local/bin/npm install

exec "$@"

