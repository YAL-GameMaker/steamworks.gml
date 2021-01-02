#!/bin/sh
g++ -m32 -O3 -fPIC -g -c -o Steamworks.gml/Steamworks.gml.o Steamworks.gml/steam_*.cpp
g++ -m32 Steamworks.gml/Steamworks.gml.o -shared -o Steamworks.gmx/extensions/Steamworks.gml/Steamworks.gml.dylib -Wl,-rpath,assets/ -LSteamworks/redistributable_bin/osx32 -lsteam_api
# VM currently needs native extension to be in @loader_path:
cp Steamworks.gmx/extensions/Steamworks.gml/Steamworks.gml.dylib Steamworks.gmx/extensions/Steamworks.gml/Steamworks.gml.vm.dylib
# YYC, on other hand, needs extensions to be in @executable_path:
install_name_tool -change @loader_path/libsteam_api.dylib @executable_path/libsteam_api.dylib Steamworks.gmx/extensions/Steamworks.gml/Steamworks.gml.dylib