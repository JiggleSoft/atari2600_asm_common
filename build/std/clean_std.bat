@echo off

set APP_NAME=teststd
set APP_NAME_PAL=%APP_NAME%_pal
set APP_NAME_NTSC=%APP_NAME%_ntsc
set APP_NAME_SECAM=%APP_NAME%_secam
set BUILD_DIR=binout


del %BUILD_DIR%\%APP_NAME_PAL%.o
del %BUILD_DIR%\%APP_NAME_PAL%.4k
del %BUILD_DIR%\%APP_NAME_PAL%.map
del %BUILD_DIR%\%APP_NAME_PAL%.lst
del %BUILD_DIR%\%APP_NAME_PAL%.labels


del %BUILD_DIR%\%APP_NAME_NTSC%.o
del %BUILD_DIR%\%APP_NAME_NTSC%.4k
del %BUILD_DIR%\%APP_NAME_NTSC%.map
del %BUILD_DIR%\%APP_NAME_NTSC%.lst
del %BUILD_DIR%\%APP_NAME_NTSC%.labels


del %BUILD_DIR%\%APP_NAME_SECAM%.o
del %BUILD_DIR%\%APP_NAME_SECAM%.4k
del %BUILD_DIR%\%APP_NAME_SECAM%.map
del %BUILD_DIR%\%APP_NAME_SECAM%.lst
del %BUILD_DIR%\%APP_NAME_SECAM%.labels
