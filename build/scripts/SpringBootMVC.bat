@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  SpringBootMVC startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Add default JVM options here. You can also use JAVA_OPTS and SPRING_BOOT_MVC_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windowz variants

if not "%OS%" == "Windows_NT" goto win9xME_args
if "%@eval[2+2]" == "4" goto 4NT_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*
goto execute

:4NT_args
@rem Get arguments from the 4NT Shell from JP Software
set CMD_LINE_ARGS=%$

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\SpringBootMVC-1.0-SNAPSHOT.jar;%APP_HOME%\lib\spring-boot-starter-web-1.3.3.RELEASE.jar;%APP_HOME%\lib\slf4j-api-1.7.16.jar;%APP_HOME%\lib\spring-boot-starter-jetty-1.3.3.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-freemarker-1.3.3.RELEASE.jar;%APP_HOME%\lib\spring-boot-devtools-1.3.3.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-actuator-1.2.5.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-1.3.3.RELEASE.jar;%APP_HOME%\lib\spring-core-4.2.5.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-validation-1.3.3.RELEASE.jar;%APP_HOME%\lib\jackson-databind-2.6.5.jar;%APP_HOME%\lib\spring-web-4.2.5.RELEASE.jar;%APP_HOME%\lib\spring-webmvc-4.2.5.RELEASE.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\logback-classic-1.1.5.jar;%APP_HOME%\lib\jetty-servlets-9.2.15.v20160210.jar;%APP_HOME%\lib\jetty-webapp-9.2.15.v20160210.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.16.jar;%APP_HOME%\lib\log4j-over-slf4j-1.7.16.jar;%APP_HOME%\lib\websocket-server-9.2.15.v20160210.jar;%APP_HOME%\lib\logback-core-1.1.5.jar;%APP_HOME%\lib\javax-websocket-server-impl-9.2.15.v20160210.jar;%APP_HOME%\lib\freemarker-2.3.23.jar;%APP_HOME%\lib\spring-context-support-4.2.5.RELEASE.jar;%APP_HOME%\lib\spring-boot-1.3.3.RELEASE.jar;%APP_HOME%\lib\spring-boot-autoconfigure-1.3.3.RELEASE.jar;%APP_HOME%\lib\spring-boot-actuator-1.2.5.RELEASE.jar;%APP_HOME%\lib\tomcat-embed-el-8.0.32.jar;%APP_HOME%\lib\jackson-annotations-2.6.0.jar;%APP_HOME%\lib\jackson-core-2.6.5.jar;%APP_HOME%\lib\spring-aop-4.2.5.RELEASE.jar;%APP_HOME%\lib\spring-beans-4.2.5.RELEASE.jar;%APP_HOME%\lib\spring-context-4.2.5.RELEASE.jar;%APP_HOME%\lib\spring-expression-4.2.5.RELEASE.jar;%APP_HOME%\lib\jetty-continuation-9.2.15.v20160210.jar;%APP_HOME%\lib\jetty-http-9.2.15.v20160210.jar;%APP_HOME%\lib\jetty-util-9.2.15.v20160210.jar;%APP_HOME%\lib\jetty-io-9.2.15.v20160210.jar;%APP_HOME%\lib\jetty-xml-9.2.15.v20160210.jar;%APP_HOME%\lib\jetty-servlet-9.2.15.v20160210.jar;%APP_HOME%\lib\websocket-common-9.2.15.v20160210.jar;%APP_HOME%\lib\websocket-client-9.2.15.v20160210.jar;%APP_HOME%\lib\websocket-servlet-9.2.15.v20160210.jar;%APP_HOME%\lib\jetty-annotations-9.2.15.v20160210.jar;%APP_HOME%\lib\javax-websocket-client-impl-9.2.15.v20160210.jar;%APP_HOME%\lib\javax.websocket-api-1.0.jar;%APP_HOME%\lib\spring-boot-starter-tomcat-1.3.3.RELEASE.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\jetty-security-9.2.15.v20160210.jar;%APP_HOME%\lib\websocket-api-9.2.15.v20160210.jar;%APP_HOME%\lib\javax.servlet-api-3.1.0.jar;%APP_HOME%\lib\jetty-plus-9.2.15.v20160210.jar;%APP_HOME%\lib\javax.annotation-api-1.2.jar;%APP_HOME%\lib\asm-5.0.1.jar;%APP_HOME%\lib\asm-commons-5.0.1.jar;%APP_HOME%\lib\tomcat-embed-core-8.0.32.jar;%APP_HOME%\lib\tomcat-embed-logging-juli-8.0.32.jar;%APP_HOME%\lib\tomcat-embed-websocket-8.0.32.jar;%APP_HOME%\lib\hibernate-validator-5.2.4.Final.jar;%APP_HOME%\lib\jetty-server-9.2.15.v20160210.jar;%APP_HOME%\lib\jetty-jndi-9.2.15.v20160210.jar;%APP_HOME%\lib\asm-tree-5.0.1.jar;%APP_HOME%\lib\validation-api-1.1.0.Final.jar;%APP_HOME%\lib\jboss-logging-3.2.1.Final.jar;%APP_HOME%\lib\classmate-1.1.0.jar;%APP_HOME%\lib\spring-boot-starter-logging-1.3.3.RELEASE.jar;%APP_HOME%\lib\snakeyaml-1.16.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.16.jar

@rem Execute SpringBootMVC
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %SPRING_BOOT_MVC_OPTS%  -classpath "%CLASSPATH%" com.movile.springbootmvc.bin.Application %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable SPRING_BOOT_MVC_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%SPRING_BOOT_MVC_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
