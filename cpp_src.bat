@echo off

echo #include^<iostream^> >> %1%2%
echo. >> %1%2%
echo using namespace std ; >> %1%2%
echo. >> %1%2%
echo int main^(^){ >> %1%2%
echo			//TODO CODES HERE >> %1%2%
echo 			return 0; >> %1%2%
echo } >> %1%2%
echo g++ %1%2% >> %CD%\run.bat
echo if %errorlevel% == 0 a.exe >> %CD%\run.bat