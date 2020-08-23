#!/usr/bin/env bash


#userId=$(id -u)
# [[ $userId -eq 0 ]]  &&  echo "You are root" ||  echo "You are not root"

#[[ $(id -u) -eq 0  ]]  &&  echo "You are root" ||  echo "You are not root"

if [[ $(id -u) -eq 0  ]]
then
	echo "You are root"
else
	echo "You are not root"
fi

