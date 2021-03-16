#!/bin/sh
g++ -m32 Steamworks.gml/steam_*.cpp \
    -std=c++11 -shared -o Steamworks.gml.so \
    -Wl,-rpath,assets/ -Lsteamworks_sdk_135a/redistributable_bin/linux32 -lsteam_api