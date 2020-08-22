#!/usr/bin/env bash
which docker 2>&1 1>/dev/null
if [[ $? -eq 0 ]]
then
	echo "Docker is installed on this host $(hostname -s)"
else
	echo "Docker is not installed on this host $(hostname -s)"
fi
