#!/bin/sh
g++ -m64 Steamworks.gml/steam_*.cpp -shared -o Steamworks.gmx/extensions/Steamworks.gml/Steamworks.gml.so -Wl,-rpath,assets/ -LSteamworks/redistributable_bin/linux32 -lsteam_api
