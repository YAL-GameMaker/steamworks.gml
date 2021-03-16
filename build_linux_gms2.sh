#!/bin/sh
g++ -m64 Steamworks.gml/steam_*.cpp \
    -std=c++11 -shared -o Steamworks.gml.so \
    -Wl,-rpath,assets/ -Lsteamworks_sdk_142/redistributable_bin/linux64 -lsteam_api -fPIC