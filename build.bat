dotnet build --configuration Debug
cp resources/SNESAPU.dll bin/Debug/net9.0-windows

dotnet build --configuration Release
cp resources/SNESAPU.dll bin/Release/net9.0-windows
