
@echo off

rem H is the destination game folder
rem GAMEDIR is the name of the mod folder (usually the mod name)
rem GAMEDATA is the name of the local GameData
rem VERSIONFILE is the name of the version file, usually the same as GAMEDATA,
rem    but not always

set H=R:\KSP_1.7.3_dev
set GAMEDIR=LLL
set GAMEDIR2=LLL-Extra
set GAMEDATA="GameData"
set VERSIONFILE=%GAMEDIR%.version

copy /Y %VERSIONFILE% %GAMEDATA%\%GAMEDIR%
copy /Y %VERSIONFILE% %GAMEDATA%\%GAMEDIR2%

xcopy /y /s /I %GAMEDATA%\%GAMEDIR% "%H%\GameData\%GAMEDIR%"
xcopy /y /s /I %GAMEDATA%\%GAMEDIR2% "%H%\GameData\%GAMEDIR2%"

