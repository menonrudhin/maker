@echo off

echo public class %1{ >> %CD%\%1%2%
echo	public static void main^(String[] ar^){ >> %CD%\%1%2%
echo			//TODO CODES HERE >> %CD%\%1%2%
echo 	} >> %CD%\%1%2%
echo } >> %CD%\%1%2%
echo javac %1%2 >> %CD%\run.bat
echo if  == 0 java %1 >> %CD%\run.bat