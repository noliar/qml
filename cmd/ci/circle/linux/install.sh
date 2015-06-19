#!/bin/bash
if [ ! -d "/opt/qt54" ]; then
    sudo add-apt-repository ppa:beineri/opt-qt541 -y
    sudo apt-get update -q
    sudo apt-get install qt54base qt54webengine qt54declarative pkg-config
fi
