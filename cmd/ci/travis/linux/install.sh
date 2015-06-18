#!/bin/bash
set -ev
if [ ! -d "/opt/qt54"]; then
    sudo apt-get install qt54base qt54webengine qt54declarative pkg-config
fi
source /opt/qt54/bin/qt54-env.sh
