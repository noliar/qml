#!/bin/bash
if [ ! -d "/usr/local/opt/qt5" ]; then
    brew install qt5
fi
brew link --force qt5
export QTDIR=/usr/local/opt/qt5
export PKG_CONFIG_PATH=$QTDIR/lib/pkgconfig:$PKG_CONFIG_PATH
export LD_LIBRARY_PATH=$QTDIR/lib/x86_64-linux-gnu:$QTDIR/lib:$LD_LIBRARY_PATH
