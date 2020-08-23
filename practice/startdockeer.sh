#!/usr/bin/env bash

if [[ $(id -u) -eq 0  ]]
then

  if systemctl status docker  1>/dev/null 2>/dev/null
  then
     echo "Already docker is up and running"
  else
     echo "Starting docker service...."
     systemctl start docker
     echo "Successfully started docker service"
  fi

else
   if sudo -v  1>/dev/null 2>/dev/null
   then
      if systemctl status docker  1>/dev/null 2>/dev/null
      then
        echo "Already docker is up and running"
      else
        echo "Starting docker service...."
        sudo systemctl start docker
        echo "Successfully started docker service"
      fi
   else
    echo "Sorry, you are not allowed to start docker service, because you are not the root user and also you dont have suod previlages to start it"
   fi
fi

