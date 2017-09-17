#!/bin/bash
if [ ! -d /home/vagrant/$1 ];
then
  sudo mkdir /home/vagrant/$1
fi
sudo cp -f $WORKSPACE/target/*.jar /home/vagrant/$1
cd /home/vagrant/$1
sudo nohup java -Xmx128M -jar -Dapplication.name=$1 /home/vagrant/$1/*.jar &
