#! /bin/bash

if [ ! -e "./installcomplete" ]
then
    dockerd > /dev/null &
    curl -fsSL https://raw.githubusercontent.com/Jigsaw-Code/outline-server/master/src/server_manager/install_scripts/install_server.sh | bash
    echo "Install complete." > ./installcomplete
fi