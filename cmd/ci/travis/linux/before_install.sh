#!/bin/bash
if [ ! -d "/opt/qt54" ]; then
    sudo add-apt-repository ppa:beineri/opt-qt541 -y
    sudo apt-get update -q
fi
