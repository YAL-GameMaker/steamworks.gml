@echo off
set dllPath=%~1
set solutionDir=%~2
set projectDir=%~3
set arch=%~4
set config=%~5

echo %config%|find "GMS2">nul
if %ERRORLEVEL% EQU 1 (
	set isGMS2=0
) else (
	set isGMS2=1
)
echo Running post-build for %config% (GMS2=%isGMS2%)

set extName=Steamworks_gml
set gmlDir14=%solutionDir%Steamworks.gmx
set gmlDir22=%solutionDir%Steamworks_yy
set gmlDir23=%solutionDir%Steamworks_23
set ext14=%gmlDir14%\extensions\%extName%
set ext22=%gmlDir22%\extensions\%extName%
set ext23=%gmlDir23%\extensions\%extName%
set cppPath=%ext23%\%extName%.cpp
set gmlPath=%ext23%\*.gml
set docName=Steamworks.gml.html
set docPath=%solutionDir%export\%docName%

echo Copying documentation...
if %isGMS2% EQU 1 (
	copy /Y %docPath% %gmlDir23%\datafiles\%docName%
	copy /Y %docPath% %gmlDir22%\datafiles\%docName%
) else (
	copy /Y %docPath% %gmlDir14%\datafiles\%docName%
)

where /q gmxgen
if %ERRORLEVEL% EQU 0 (
	
	echo Combining the source files...
	type "%projectDir%steam_*.h" "%projectDir%steam_*.cpp" >"%cppPath%" 2>nul
	
	echo Running GmxGen...
	if %isGMS2% EQU 1 (
		gmxgen "%ext23%\%extName%.yy" ^
		--copy "%dllPath%" "%extName%.dll:%arch%" ^
		--copy "%cppPath%" "%extName%.cpp"

		gmxgen "%ext22%\%extName%.yy" ^
		--copy "%dllPath%" "%extName%.dll:%arch%" ^
		--copy "%cppPath%" "%extName%.cpp" ^
		--copy "%gmlPath%" "*.gml"
	) else (
		gmxgen "%ext14%.extension.gmx" ^
		--copy "%dllPath%" "%extName%.dll:%arch%" ^
		--copy "%cppPath%" "%extName%.cpp" ^
		--copy "%gmlPath%" "*.gml"
	)

) else (

	echo Copying DLLs...
	if "%arch%" EQU "x64" (
		copy /Y "%dllPath%" "%ext23%\%extName%_x64.dll"
	) else (
		if %isGMS2% EQU 1 (
			copy /Y "%dllPath%" "%ext22%\%extName%.dll"
			copy /Y "%dllPath%" "%ext23%\%extName%.dll"
		) else (
			copy /Y "%dllPath%" "%ext14%\%extName%.dll"
		)
	)
	
	echo Copying GML files...
	if %isGMS2% EQU 1 (
		robocopy %ext23% %ext22% *.gml /L >nul
	) else (
		robocopy %ext23% %ext14% *.gml /L >nul
	)

	echo postBuild.bat: Warning N/A: Could not find GmxGen - extensions will not be updated automatically. See https://github.com/YAL-GameMaker-Tools/GmxGen for setup.
)