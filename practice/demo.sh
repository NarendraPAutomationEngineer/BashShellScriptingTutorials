#!/bin/bash
dockerStatus=$(systemctl status docker | awk '/Active/ { print $3 }' | tr -d "[()]")
dockerVersion=$(docker -v | awk '/version/ { print  $3 }' | tr -d ",")
echo "The Docker Status is: $dockerStatus
The Docker version is: $dockerVersion"
