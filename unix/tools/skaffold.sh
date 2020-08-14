#!/bin/bash

# INSTALL SKAFFOLD 
SKAFFOLD=$(skaffold version)

if [[ $SKAFFOLD != 'v0.38.0' ]]; then 
    echo 'Install skaffold version 0.38.0'
    sudo curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/v0.38.0/skaffold-linux-amd64
    sudo rm -R  /usr/local/bin/skaffold
    sudo chmod +x skaffold 
    sudo mv skaffold /usr/local/bin
fi;