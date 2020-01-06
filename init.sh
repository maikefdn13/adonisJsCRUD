#!/bin/bash

echo "Create .env:"
source .env

echo "Run migration:"
adonis migration:run --force

#chmod 777 na pasta ./database/pgdata

if [ "$NODE_ENV" == "production" ];then
	echo "Start node server production:"
	adonis serve
else
	echo "Start node server development:"
	adonis serve --dev --polling
fi
