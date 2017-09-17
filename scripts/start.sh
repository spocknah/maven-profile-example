#!/bin/bash
cp -f $WORKSPACE/target/*.jar /home/vagrant/$1
cd /home/vagrant/$1
sudo nohup java -Xmx128M -jar -Dapplication.name=$1 /home/vagrant/$1/*.jar > /dev/null 2> /dev/null < /dev/null &
