#!/bin/bash
DockerVersion=$(docker -v | cut -d " " -f 3 | tr "," " ")
NginxVersion=$(nginx -v 2>&1 | cut -d " " -f 3 | cut -d "/" -f 2)
OSUname=$(uname)
cat <<EOF | /usr/bin/mail -s "$(date '+%d_%m_%Y'): Report on $(hostname)" "dowithscripting@gmail.com"
Docker Version: $DockerVersion
Nginx  Version: $NginxVersion
OS Uname:  $OSUname

Thanks,
DevOps Team
EOF
