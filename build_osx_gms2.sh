#!/bin/sh
g++ -c -O3 -fPIC -g -Dnullptr=NULL -Wno-c++11-extensions Steamworks.gml/Steamworks.gml.cpp -o Steamworks.gml/Steamworks.gml.o
g++ Steamworks.gml/Steamworks.gml.o -shared -o Steamworks_yy/extensions/Steamworks_gml/Steamworks.gml.dylib -Wl,-rpath,assets/ -LSteamworks/redistributable_bin/osx32 -lsteam_api
# VM currently needs native extension to be in @loader_path:
cp Steamworks_yy/extensions/Steamworks_gml/Steamworks.gml.dylib Steamworks_yy/extensions/Steamworks_gml/Steamworks.gml.vm.dylib
# YYC, on other hand, needs extensions to be in @executable_path:
install_name_tool -change @loader_path/libsteam_api.dylib @executable_path/libsteam_api.dylib Steamworks_yy/extensions/Steamworks_gml/Steamworks.gml.dylib