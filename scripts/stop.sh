#!/bin/bash
pid=`ps -eaf | grep application.name=$1 | egrep -v "grep|sudo|jenkins" | awk '{ print $2 }';`
if [ "$pid" != "" ]; then
  sudo kill -9 $pid > /dev/null 2> /dev/null < /dev/null
fi
