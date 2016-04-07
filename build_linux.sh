#!/bin/sh
ARCH=`uname -m`
if [ "$ARCH" = "x86" ]; then
	REDIST="linux32"
else
	REDIST="linux64"
fi
gcc -O3 -fPIC -g -c -o Steamworks.gml/Steamworks.gml.o Steamworks.gml/Steamworks.gml.cpp
gcc Steamworks.gml/Steamworks.gml.o -shared -o Steamworks.gmx/extensions/Steamworks.gml/Steamworks.gml.so -Wl,-rpath,assets/ -LSteamworks/redistributable_bin/$REDIST -lsteam_api
