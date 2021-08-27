@echo off
set /p ver="Version?: "
echo %ver%
cmd /C itchio-butler push Steamworks_gml.gmez yellowafterlife/steamworks-gml-example:gms1 --userversion=%ver%
cmd /C itchio-butler push Steamworks_gml.yymp yellowafterlife/steamworks-gml-example:gms2 --userversion=%ver%
cmd /C itchio-butler push Steamworks_gml.yymps yellowafterlife/steamworks-gml-example:gms2.3 --userversion=%ver%

pause