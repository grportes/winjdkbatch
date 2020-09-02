@echo off
:inicio
set userJavaPath=%systemdrive%%homepath%\develop\ferramentas\java
set linkJDK=%userJavaPath%\jdk
cls
echo.
echo.
echo 1. JDK 8
echo 2. JDK 11
echo.
echo 0. Sair
echo.
set /p choice=Selecione a opcao desejada:
if '%choice%'=='' echo "%choice%" opcao invalida !!
if '%choice%'=='1' (
	set userJavaPath=%userJavaPath%\jdk8u265-b01
	set versao=8
	goto setLink
)
if '%choice%'=='2' (
	set userJavaPath=%userJavaPath%\jdk-11.0.8+10
	set versao=11
	goto setLink
)
if '%choice%'=='0' goto sair
echo.
goto inicio
:setLink
if exist %linkJDK% rmdir %linkJDK%
mklink /d %linkJDK% %userJavaPath%
echo -----------------------------------------------------
echo ------- Java %versao% ativado -----------------------
echo -----------------------------------------------------
java -version
:sair
exit /b 0