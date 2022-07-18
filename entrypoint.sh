#!/bin/bash

config_dir="/surgio-data"
if [ -d $config_dir ]&&[ "$(ls -A $config_dir)" ];then
    \cp -rf /surgio-data/* /surgio-folder/
fi

cd /surgio-folder
node gateway.js
