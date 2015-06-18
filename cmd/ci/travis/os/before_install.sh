#!/bin/bash
set -ev
if [ ! -d "/usr/local/opt/qt5"]; then
    brew update
fi
