@echo off

where /q 7z
if %ERRORLEVEL% NEQ 1 (
	echo 7-zip should be accessible as "7z" for this to work
	exit /b 1
)

if exist GMS1.zip (
	pushd ..\Steamworks.gmx\extensions\Steamworks_gml
	cmd /C 7z -y e ..\..\..\Artifacts\GMS1.zip *
	popd
)

if exist GMS2.zip (
	pushd ..\Steamworks_yy\extensions\Steamworks_gml
	cmd /C 7z -y e ..\..\..\Artifacts\GMS2.zip *
	del /Q Steamworks_gml.dll
	popd

	pushd ..\Steamworks_23\extensions\Steamworks_gml
	cmd /C 7z -y e ..\..\..\Artifacts\GMS2.zip *
	del /Q Steamworks.gml.dll
	popd
)

:eof