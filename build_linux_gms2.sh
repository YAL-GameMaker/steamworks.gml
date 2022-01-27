#!/bin/sh
g++ -m64 \
    -DSTEAMWORKS=142 \
    -std=c++17 \
    Steamworks.gml/steam_*.cpp \
    Steamworks.gml/gml_*.cpp \
    Steamworks.gml/base64_encode.cpp \
    -Wl,-rpath,assets/ -fPIC \
    -Lsteamworks_sdk_142/redistributable_bin/linux64 \
    -lsteam_api \
    -Isteamworks_sdk_142/public \
    -shared -o Steamworks.gml.so