#!/usr/bin/env bash
#{ ls ; pwd ; date ; }

#which docker && { echo "Docker is intalled on this host" ; echo "The docker version is: $(docker -v)" ; }

which apache2 2>&1 1>/dev/null && { echo "Apache is installed" ; echo "apache versin info is: $(apache2 -v)" ; } || echo "apache is not installed"
