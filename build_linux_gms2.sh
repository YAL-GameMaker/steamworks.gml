#!/bin/sh
g++ -m64 Steamworks.gml/steam_*.cpp \
    -std=c++11 -shared -o Steamworks.gmx/extensions/Steamworks.gml/Steamworks.gml.so \
    -Wl,-rpath,assets/ -LSteamworks/redistributable_bin/linux64 -lsteam_api -fPIC
