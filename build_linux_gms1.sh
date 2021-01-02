#!/bin/sh
g++ -m32 Steamworks.gml/steam_*.cpp \
    -std=c++11 -shared -o Steamworks.gml.so \
    -Wl,-rpath,assets/ -LSteamworks/redistributable_bin/linux32 -lsteam_api
