#!/bin/sh
g++ -m64 \
    -std=c++11 \
    Steamworks.gml/steam_*.cpp \
    -Wl,-rpath,assets/ -fPIC \
    -Lsteamworks_sdk_142/redistributable_bin/linux64 \
    -lsteam_api \
    -Isteamworks_sdk_142/public \
    -shared -o Steamworks.gml.so