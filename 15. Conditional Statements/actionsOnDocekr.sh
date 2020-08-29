#!/usr/bin/env bash
######################################################
# Author: Narendraa                                  #
# Date: Aug-2020                                     #
# Usage is: start,stop,restart and version of docker #
######################################################

if [[ $(id -u) -ne 0 ]]
then
	echo "You are not allowed to run this script"
	exit 1
fi


read -p "Enter your option: " option

if [[ $option == start ]]
then
	echo "Starting docker...."
	systemctl start docker
elif [[ $option == stop ]]
then
	echo "Stopping docker...."
	systemctl stop docker
elif [[ $option == restart ]]
then
	echo "Restarting docker...."
	systemctl restart docker
elif [[ $option == version ]]
then
	version=$(docker -v | cut -d " " -f 3 | tr -d ",")
	echo "The version of docker is: $version"
else
	echo "You option is invalid"
	echo "Valid Options are: start stop restart and version"
fi
