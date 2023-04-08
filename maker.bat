:: Author : Rudhin

:: To support more languages
:: 1. Add an "if" conditions as follows,
:: if "-<unique_switch_here>" (
:: 	set ext=.<extension_of_the_src_file>
::	goto ext_done
:: )
::
:: 2. Add another if condition on the switch as follows,
:: if "%1" == "-<unique_switch_here>" (
::	call lang_name_src.bat %2 %ext%
::	goto open_the_file
:: )


@echo off
if "%2" == "" goto usage_message

if "%1" == "-j" (
	set ext=.java
	goto ext_done
)

if "%1" == "-c" (
	set ext=.c
	goto ext_done
)

if "%1" == "-g" (
	set ext=.cpp
	goto ext_done
)

goto usage_message

:ext_done
echo /* > %CD%\%2%ext%
echo 	Author : %USERNAME% >> %CD%\%2%ext%
echo 	Date : %date% >> %CD%\%2%ext%
echo */ >> %CD%\%2%ext%
echo. >> %CD%\%2%ext%

::CODE TO CREATE JAVA FILE HERE
if "%1" == "-j" (
	call java_src.bat %2 %ext%
	goto open_the_file
)

::CODE TO CREATE C FILE HERE
if "%1" == "-c" (
	call c_src.bat %2 %ext%
	goto open_the_file
)

::CODE TO CREATE C++ FILE HERE
if "%1" == "-g" (
	call cpp_src.bat %2 %ext%
	goto open_the_file
)

:usage_message
echo Usage : maker [-j] [-c] [-g] FILENAME
echo -j : Java file
echo -c : C file
echo -g : C++ file
goto end

:open_the_file
"%systemroot%\system32\notepad"  %CD%\%2%ext%
:end
