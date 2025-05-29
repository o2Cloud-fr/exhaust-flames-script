@echo off
setlocal enabledelayedexpansion

chcp 65001 >nul
cls

echo.
echo       🌌 ･ﾟ✧*:･ﾟ✧ MyAlien ✧ﾟ･: *✧･ﾟ 🌌
echo.    
echo          👽                           👽
echo            ╲                         ╱
echo             ╲     🌟 BIENVENUE 🌟    ╱
echo              ╲                     ╱
echo               ╲___________________╱
echo                ╲                 ╱
echo                 ╲ 🛸 MyAlien 🛸 ╱
echo                  ╲_____________╱
echo                   ╲           ╱
echo                    ╲_________╱
echo                     ╲       ╱
echo                      ╲_____╱
echo                       ╲___╱
echo                        ╲_╱
echo.

echo Flammes à échappement .
echo.

:: Chemin vers le dossier cars
set "CARS_PATH=D:\SteamLibrary\steamapps\common\assettocorsa\content\cars"

:: Compteur pour suivre le nombre de fichiers modifiés
set /a counter=0

:: Parcourir tous les dossiers de voitures
for /d %%i in ("%CARS_PATH%\*") do (
    call :ProcessCar "%%i"
)

goto :EndProcessing

:ProcessCar
set "CAR_PATH=%~1"

:: Vérifie et crée le dossier extension si besoin
if not exist "%CAR_PATH%\extension\" (
    mkdir "%CAR_PATH%\extension"
    echo Création du dossier extension pour !CAR_PATH!
)

:: Vérifie et crée le fichier ext_config.ini si besoin
if not exist "%CAR_PATH%\extension\ext_config.ini" (
    echo Création de ext_config.ini pour !CAR_PATH!
    echo. > "%CAR_PATH%\extension\ext_config.ini"
)

:: Ajoute la configuration à la fin du fichier
for %%n in ("%CAR_PATH%") do echo Modification de: %%~nn

(
    echo.
    echo [EXHAUST_FLAMES]
    echo ANTILAG=1
    echo ANTILAG_DELAY=0.0
    echo ANTILAG_INTENSITY=0.005
    echo ANTILAG_INTERVAL_MAX=0.1
    echo ANTILAG_INTERVAL_MIN=0.1
    echo ANTILAG_TURBO_THRESHOLD=1
    echo DAMAGE=0
    echo DAMAGE_DURATION=0.00
    echo DAMAGE_INTENSITY=0
    echo DAMAGE_PROBABILITY=0
    echo DISCHARGE=1
    echo DISCHARGE_CHARGE_TIME=0.001
    echo DISCHARGE_DELAY=0.5
    echo DISCHARGE_DURATION=1
    echo DISCHARGE_PROBABILITY=1
    echo DISCHARGE_INTENSITY=30
    echo DISCHARGE_RPM_THRESHOLD_MAX=9000
    echo DISCHARGE_RPM_THRESHOLD_MIN=6000
    echo DISCHARGE_WATER_TEMPERATURE_THRESHOLD=70
    echo FLAT_SHIFT=1
    echo FLAT_SHIFT_COOLDOWN=0
    echo FLAT_SHIFT_DURATION=0.1
    echo FLAT_SHIFT_GAS_THRESHOLD=50
    echo FLAT_SHIFT_INTENSITY=10
    echo FLAT_SHIFT_PROBABILITY=5
    echo FLAT_SHIFT_RPM_THRESHOLD=6000
    echo LIMITER=1
    echo LIMITER_DELAY=0
    echo LIMITER_INTENSITY=10
    echo LIMITER_RPM_THRESHOLD=6000
    echo.
    echo [PARTICLES_FX_EXHAUST_FLAMES]
    echo COLOR_MULT=0.8, 0.5, 1.0, 1.0
    echo INTENSITY_MULT=1
    echo SIZE_MULT=2.15
    echo TEMPERATURE_MULT=2.0
) >> "%CAR_PATH%\extension\ext_config.ini"

set /a counter+=1

goto :eof

:EndProcessing

echo.
echo        ╔══════════════════════════════════════════╗
echo        ║                                          ║
echo        ║    🛸    M Y A L I E N    🛸            ║
echo        ║                                          ║
echo        ║  ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ║
echo        ║  █░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░█  ║
echo        ║  █         👽 MyAlien 👽            █  ║
echo        ║  █░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░█  ║
echo        ║  ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  ║
echo        ║                                          ║
echo        ╚══════════════════════════════════════════╝

echo.
echo Terminé ! %counter% fichiers ont été modifiés.
echo.
pause
