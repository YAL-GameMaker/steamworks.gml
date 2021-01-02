#!/bin/sh
g++ Steamworks.gml/steam_*.cpp -std=c++11 -shared -o Steamworks_yy/extensions/Steamworks_gml/Steamworks.gml.dylib -Wl,-rpath,assets/ -LSteamworks/redistributable_bin/osx32 -lsteam_api
# VM currently needs native extension to be in @loader_path:
cp Steamworks_yy/extensions/Steamworks_gml/Steamworks.gml.dylib Steamworks_yy/extensions/Steamworks_gml/Steamworks.gml.vm.dylib
# YYC, on other hand, needs extensions to be in @executable_path:
install_name_tool -change @loader_path/libsteam_api.dylib @executable_path/libsteam_api.dylib Steamworks_yy/extensions/Steamworks_gml/Steamworks.gml.dylib