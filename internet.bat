@echo off
:: Check if Ethernet is enabled
netsh interface show interface "Ethernet" | find "Enabled" >nul

if %errorlevel% == 0 (
    :: If enabled, disable it
    netsh interface set interface "Ethernet" disabled
    echo Ethernet Disabled
) else (
    :: If disabled, enable it
    netsh interface set interface "Ethernet" enabled
    echo Ethernet Enabled
)
