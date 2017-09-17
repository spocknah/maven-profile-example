#!/bin/bash
PORT=80

while [ true ]
do
	if [ "$(curl -s http://localhost:$PORT/health)" = '{"status":"UP"}' ]
	then
		exit 0
	fi
done
