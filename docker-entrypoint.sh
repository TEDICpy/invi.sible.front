#!/bin/bash -e

carpeta=node_modules

if [ ! -d "$carpeta" ]; then
  echo -e "---------------------------"
  echo -e " Parece no estar instalado "
  echo -e "  corremos un npm install"
  echo -e "---------------------------"
  /usr/local/bin/npm install
fi

exec "$@"

