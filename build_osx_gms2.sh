#!/bin/sh
g++ \
    -std=c++11 \
    Steamworks.gml/steam_*.cpp \
    Steamworks.gml/gml_*.cpp \
    Steamworks.gml/base64_encode.cpp \
    -Wl,-rpath,assets/ -fPIC \
    -Lsteamworks_sdk_142/redistributable_bin/osx32 \
    -lsteam_api \
    -Isteamworks_sdk_142/public \
    -shared -o Steamworks.gml.dylib
# VM currently needs native extension to be in @loader_path:
cp Steamworks.gml.dylib Steamworks.gml.vm.dylib
# YYC, on other hand, needs extensions to be in @executable_path:
install_name_tool -change @loader_path/libsteam_api.dylib @executable_path/libsteam_api.dylib Steamworks.gml.dylib 
