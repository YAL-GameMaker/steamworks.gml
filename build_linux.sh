gcc -O3 -fPIC -Wall -g -c -o Steamworks.gml/Steamworks.gml.o Steamworks.gml/Steamworks.gml.cpp
gcc Steamworks.gml/Steamworks.gml.o -shared -o Steamworks.gmx/extensions/Steamworks.gml/Steamworks.gml.so -Wl,-rpath,assets/ -LSteamworks/redistributable_bin/linux32 -lsteam_api
