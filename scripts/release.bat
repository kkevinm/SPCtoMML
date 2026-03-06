set PACKAGE=SPCtoMML-%1
set PUBLISH=../bin/Release/net9.0-windows/publish

if exist %PUBLISH% (
    rmdir /s /q "%PUBLISH%"
)

if exist %PACKAGE% (
    rmdir /s /q "%PACKAGE%"
)
mkdir %PACKAGE%

dotnet clean ../SPCtoMML.sln
dotnet publish --configuration Release ../SPCtoMML.sln
cp ../resources/SNESAPU.dll "%PUBLISH%"
cp ../resources/readme.txt "%PUBLISH%"

xcopy /s /e "%PUBLISH%" "%PACKAGE%"

if exist "%PACKAGE%.zip" (
    rm "%PACKAGE%.zip"
)

cd "%PACKAGE%"
tar -caf "../%PACKAGE%.zip" *
cd ..

rmdir /s /q "%PACKAGE%"
