copy /y "Steamworks_yy\extensions\Steamworks_gml\Steamworks.gml.gml" "Steamworks.gmx\extensions\Steamworks.gml\Steamworks.gml.gml"

type "steam_*.h" "steam_*.cpp" > "Steamworks_yy\extensions\Steamworks_gml\Steamworks.gml.cpp"
copy /y "Steamworks_yy\extensions\Steamworks_gml\Steamworks.gml.cpp" "Steamworks.gmx\extensions\Steamworks.gml\Steamworks.gml.cpp"
copy /y "Steamworks_yy\extensions\Steamworks_gml\Steamworks.gml.cpp" "Steamworks_23\extensions\Steamworks_gml\Steamworks.gml.cpp"

copy /y "Release\Steamworks.gml.dll" "Steamworks.gmx\extensions\Steamworks.gml\Steamworks.gml.dll"
copy /y "Release\Steamworks.gml.dll" "Steamworks_yy\extensions\Steamworks_gml\Steamworks.gml.dll"

copy /y "export\steamworks.gml.html" "Steamworks.gmx\datafiles\steamworks.gml.html"
copy /y "export\steamworks.gml.html" "Steamworks_yy\datafiles\steamworks.gml.html"
copy /y "export\steamworks.gml.html" "Steamworks_23\datafiles\steamworks.gml.html"

GmxGen "Steamworks.gmx\extensions\Steamworks.gml.extension.gmx"
GmxGen "Steamworks_yy\extensions\Steamworks_gml\Steamworks_gml.yy"
GmxGen "Steamworks_23\extensions\Steamworks_gml\Steamworks_gml.yy"