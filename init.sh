#!/bin/bash

# -----------------------------------------
# Resolvendo 'bad interpreter' no Bash
#
# sed -i 's/\r$//' script.sh
# ./script.sh
# -----------------------------------------


#echo "Create .env:"
source $HOME/.env

echo "Run migration:"
adonis migration:run

#chmod 777 na pasta ./database/pgdata

if [ "$NODE_ENV" == "production" ];then
	echo "Start node server production:"
	adonis serve
else
	echo "Start node server development:"
	adonis serve --dev --polling
fi