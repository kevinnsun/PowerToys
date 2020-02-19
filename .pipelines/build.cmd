cd /D "%~dp0"

call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\Common7\Tools\VsDevCmd.bat" -arch=amd64 -host_arch=amd64 -winsdk=10.0.16299.0
msbuild ../src/common/notifications/notifications_dll.vcxproj /p:Configuration=Release /p:Platform=x64
msbuild ../src/common/notifications_winrt/notifications.vcxproj /p:Configuration=Release /p:Platform=x64
call msbuild ../PowerToys.sln /p:Configuration=Release /p:Platform=x64 || exit /b 1
