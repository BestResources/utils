#!/bin/bash

# INSTALL AWS CLI
AWS=$(which aws)
if [[ $AWS == '' ]]; then 
    echo 'Install AWS CLI'
    sudo apt-get install awscli -y
fi;