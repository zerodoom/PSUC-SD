@echo off
echo ------------------------------------
echo - Steam Deck PSU Clemtine Launcher - 
echo ------------------------------------
echo version 0.1 by zerodoom 
echo.
echo Checking for PSUC.pat


IF EXIST "PSUC.pat" (
    echo PSUC.pat found. Replaceing PSUC.exe.
    DEL PSUC.exe
    rename PSUC.pat PSUC.exe
    PSUC.exe -PSU
) ELSE (
    echo No patch found. Launching PSUC.exe
    PSUC.exe -PSU
)