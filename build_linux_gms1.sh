#!/bin/sh
g++ -m32 \
    -std=c++11 \
    Steamworks.gml/steam_*.cpp \
    Steamworks.gml/gml_*.cpp \
    Steamworks.gml/base64_encode.cpp \
    -Wl,-rpath,assets/ -fPIC \
    -Lsteamworks_sdk_135a/redistributable_bin/linux32 \
    -lsteam_api \
    -Isteamworks_sdk_135a/public \
    -shared -o Steamworks.gml.so