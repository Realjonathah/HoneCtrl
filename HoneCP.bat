@echo off
set version=1.0
setlocal enabledelayedexpansion
chcp 65001
TITLE Preparing...
call :IsAdmin
:start
if exist c:\resources goto main
md c:\resources
md C:\Users\%username%\Desktop\Revert
cls
powershell Enable-ComputerRestore -Drive 'C:\', 'D:\', 'E:\', 'F:\', 'G:\' >nul
powershell Checkpoint-Computer -Description 'Hone Restore Point' >nul
reg export HKLM C:\Users\%username%\Desktop\Revert\HKLM.reg >nul
reg export HKCU C:\Users\%username%\Desktop\Revert\HKCU.reg >nul
reg export HKCR C:\Users\%username%\Desktop\Revert\HKCR.reg >nul
reg export HKU  C:\Users\%username%\Desktop\Revert\HKU.reg >nul
reg export HKCC C:\Users\%username%\Desktop\Revert\HKCC.reg >nul

:main
color 06
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)
TITLE Hone Control Panel %version%
cls
echo.
echo.
echo.
echo.
echo.
echo.                                              
echo.                                                                          .  
echo.                                                                       +N. 
echo.                                                              //        oMMs 
echo.                                                             +Nm`    ``yMMm- 
echo.                                                          ``dMMsoyhh-hMMd.  
echo.                                                          `yy/MMMMNh:dMMh`   
echo.                                                         .hMM.sso++:oMMs`    
echo.                                                        -mMMy:osyyys.No      
echo.                                                       :NMMs-oo+/syy:-       
echo.                                                      /NMN+ ``   :ys.        
echo.                                                     `NMN:        +.         
echo.                                                     om-                    
echo.                                                      `.                                                                                                                                                       
echo. 
echo. 
echo. 
call :ColorText 06 "                         [ "
call :ColorText F " 1 "
call :ColorText 06 " ] " 
call :ColorText F " Tweaks "
call :ColorText 06 "                                                  [ "
call :ColorText F " 2 "
call :ColorText 06 " ] " 
call :ColorText F " About "
echo.
echo.
call :ColorText 06 "                         [ "
call :ColorText F " 3 "
call :ColorText 06 " ] " 
call :ColorText F " Changelog "
call :ColorText 06 "                                               [ "
call :ColorText F " 4 "
call :ColorText 06 " ] " 
call :ColorText F " Policies "
echo.
echo.
call :ColorText 06 "                                                        [ "
call :ColorText F " 5 "
call :ColorText 06 " ] " 
call :ColorText F " Credits "
echo.
echo.
echo.
call :ColorText 8 "                                                      [ press X to close ]"
echo.
echo.
echo.
set /p choice="Select a corresponding number to what you'd like > "
if /i "%choice%"=="1" goto Tweaks
if /i "%choice%"=="2" goto About
if /i "%choice%"=="3" goto Changelog
if /i "%choice%"=="4" goto Policies
if /i "%choice%"=="5" goto Credits
if /i "%choice%"=="X" goto Close
) ELSE (
SET PlaceMisspelt=Main
goto MissSpell
)


:Tweaks
color 06
cls
echo.
echo.
echo.
echo.
echo.                                                                          .  
echo.                                                                       +N. 
echo.                                                              //        oMMs 
echo.                                                             +Nm`    ``yMMm- 
echo.                                                          ``dMMsoyhh-hMMd.  
echo.                                                          `yy/MMMMNh:dMMh`   
echo.                                                         .hMM.sso++:oMMs`    
echo.                                                        -mMMy:osyyys.No      
echo.                                                       :NMMs-oo+/syy:-       
echo.                                                      /NMN+ ``   :ys.        
echo.                                                     `NMN:        +.         
echo.                                                     om-                    
echo.                                                      `.                                                    
echo. 
echo. 
echo. 
call :ColorText 06 "                         [ "
call :ColorText F " 1 "
call :ColorText 06 " ] " 
call :ColorText F " Power Plan "
call :ColorText 06 "                                  [ "
call :ColorText F " 2 "
call :ColorText 06 " ] " 
call :ColorText F " Services Optimization "
echo.
echo.
echo.
call :ColorText 06 "                         [ "
call :ColorText F " 3 "
call :ColorText 06 " ] " 
call :ColorText F " Nvidia Drivers  "
call :ColorText 06 "                              [ "
call :ColorText F " 4 "
call :ColorText 06 " ] " 
call :ColorText F " Timer Resolution "
echo.
echo.
echo.
call :ColorText 06 "                         [ "
call :ColorText F " 5 "
call :ColorText 06 " ] " 
call :ColorText F " Nvidia Settings "
call :ColorText 06 "                             [ "
call :ColorText F " 6 "
call :ColorText 06 " ] " 
call :ColorText F " MSI Mode "
echo.
echo.
echo.
call :ColorText 06 "                         [ "
call :ColorText F " 7 "
call :ColorText 06 " ] " 
call :ColorText F " Cleaner "
call :ColorText 06 "                                     [ "
call :ColorText F " 8 "
call :ColorText 06 " ] " 
call :ColorText F " Internet Tweaks "
echo.
echo.
echo.
call :ColorText 06 "                         [ "
call :ColorText F " 9 "
call :ColorText 06 " ] " 
call :ColorText F " Debloat "
call :ColorText 06 "                                     [ "
call :ColorText F " 10 "
call :ColorText 06 " ] " 
call :ColorText F " Mouse Fix "
echo.
echo.
echo.
call :ColorText 06 "                         [ "
call :ColorText F " 11 "
call :ColorText 06 " ] " 
call :ColorText F " Disable Services "
call :ColorText 06 "                           [ "
call :ColorText F " 12 "
call :ColorText 06 " ] " 
call :ColorText F " Affinity "
echo.
echo.
echo.
call :ColorText 4 "                                                       [ "
call :ColorText 4 " 13 "
call :ColorText 4 " ] " 
call :ColorText  4 " Revert "
echo.
echo.
echo.
call :ColorText 8 "                                                    [ press X to go back ]"
echo.
echo.
echo.
set /p choice="            Select a corresponding number to what you'd like > "
if /i "%choice%"=="1" goto PowerPlan
if /i "%choice%"=="2" goto ServicesOptimization
if /i "%choice%"=="3" goto Drivers
if /i "%choice%"=="4" goto TimerRes
if /i "%choice%"=="5" goto NvidiaSettings
if /i "%choice%"=="6" goto MSI
if /i "%choice%"=="7" goto Cleaner
if /i "%choice%"=="8" goto Internet
if /i "%choice%"=="9" goto Debloat
if /i "%choice%"=="10" goto Mouse
if /i "%choice%"=="11" goto ServiceDisable
if /i "%choice%"=="12" goto Affinity
if /i "%choice%"=="13" goto Revert
if /i "%choice%"=="X" goto Main
) ELSE (
SET PlaceMisspelt=Tweaks
goto MissSpell
)



:About
cls
echo About
echo Owned by AuraSide, This is a gui for the Hone Manual Tweaks.
echo.
call :ColorText 8 "                                                      [ press X to go back ]"
echo.
echo.
echo.
set /p choice="> "
if /i "%choice%"=="X" goto Main
) ELSE (
SET PlaceMisspelt=About
goto MissSpell
)

:Changelog
cls
echo Version 1.0
echo Hone tweaks have all been compiled into the following GUI and new batch program.
echo.
echo.
echo.
call :ColorText 8 "                                                      [ press X to go back ]"
echo.
echo.
echo.
set /p choice="> "
if /i "%choice%"=="X" goto Main
) ELSE (
SET PlaceMisspelt=Changelog
goto MissSpell
)

:Policies
cls
echo Owned By AuraSide, Copyright Claimed. 
echo.
echo.
call :ColorText 8 "                                                      [ press X to go back ]"
echo.
echo.
echo.
set /p choice= "> "
if /i "%choice%"=="X" goto Main
) ELSE (
SET PlaceMisspelt=Policies
goto MissSpell
)

:Credits
cls
echo Coding Done by Drevoes#5268
echo Aesthetics Done by 1397ms#0001
echo bug testing and suggestions done by Jonathah#1221
echo This list may be subject to change! Keep a close watch on this channel :D
echo.
echo.
call :ColorText 8 "                                                      [ press X to go back ]"
echo.
echo.
echo.
set /p choice= "> "
if /i "%choice%"=="X" goto Main
) ELSE (
SET PlaceMisspelt=Credits
goto MissSpell
)

:PowerPlan
color 06
cls
echo ╔═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo ║                                                          Power Plan                                                               ║
echo ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣
echo ║                                                                                                                                   ║
echo ║                                    Type the letter Y for Yes or N for No, below                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║    [Y] Continue                                                                                                                   ║
echo ║    [N] Exit                                                                                                                       ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣ 
echo ║This is a DESKTOP Power Plan, meaning it is not very optimized for laptops, and may make them very hot. Would you like to install? ║               
echo ╚═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
set /p choice="Y or N >  "
if /i "%choice%"=="Y" goto ContinuePowerPlan
if /i "%choice%"=="N" goto Tweaks
) ELSE (
SET PlaceMisspelt=PowerPlan
goto MissSpell
)

:ContinuePowerPlan
cls
echo delete default windows powerplans? (recommended) Y or N
set /p choice="> "
if /i "%choice%"=="Y" goto delete
if /i "%choice%"=="N" goto keep
) ELSE (
SET PlaceMisspelt=ContinuePowerPlan
goto MissSpell
)


:keep
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/798666504190296064/Hone_Power_Plan.pow" -OutFile "c:\resources\Hone_Power_Plan.pow" >nul 
cls
powercfg /d 44444444-4444-4444-4444-444444444448 >nul 
powercfg -import "c:\resources\Hone_Power_Plan.pow" 44444444-4444-4444-4444-444444444448 >nul
powercfg -SETACTIVE "44444444-4444-4444-4444-444444444448" >nul
powercfg /changename 44444444-4444-4444-4444-444444444448 "Hone Ultimate Power Plan" "The Ultimate Power Plan to reduce latency and boost FPS." >nul
goto tweaks

:delete
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/798666504190296064/Hone_Power_Plan.pow" -OutFile "c:\resources\Hone_Power_Plan.pow" >nul 
cls
powercfg /d 44444444-4444-4444-4444-444444444448 >nul 
powercfg -import "c:\resources\Hone_Power_Plan.pow" 44444444-4444-4444-4444-444444444448 >nul 
powercfg -SETACTIVE "44444444-4444-4444-4444-444444444448" >nul 
powercfg /changename 44444444-4444-4444-4444-444444444448 "Hone Ultimate Power Plan" "The Ultimate Power Plan to reduce latency and boost FPS." >nul 
::Balanced Plan
powercfg /d 381b4222-f694-41f0-9685-ff5bb260df2e >nul 
::High Performance Plan
powercfg /d 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c >nul 
::Power Saving Plan
powercfg /d a1841308-3541-4fab-bc81-f71556f20b4a >nul
goto tweaks

:ServicesOptimization
cls
echo ╔═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo ║                                                   SERVICES OPTIMIZATION                                                           ║
echo ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣
echo ║                                                                                                                                   ║
echo ║                                    Type the letter Y for Yes or N for No, below                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║    [Y] Continue                                                                                                                   ║
echo ║    [N] Exit                                                                                                                       ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣ 
echo ║ This tweak changes the split threshold for the service host to your amount of RAM, reverting the old behaviour of Windows(making  ║                                                                                                                                 ║               
echo ║ services group together). When one service fails in a service host, the service host process is terminated. This means that this  ║
echo ║ tweak will make it so if one service fails in a group, all the other ones will (due to the service host being terminated). Would  ║ 
echo ║ you like to install?                                                                                                              ║                                                                                                                                                                                                ║
echo ╚═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝ 

set /p choice="Y or N >  "
if /i "%choice%"=="Y" goto ContinueServicesOptimization
if /i "%choice%"=="N" goto Tweaks
) ELSE (
SET PlaceMisspelt=ServicesOptimization
goto MissSpell
)

:ContinueServicesOptimization
cls
for /f "tokens=2 delims==" %%i in ('wmic os get TotalVisibleMemorySize /format:value') do set /a mem=%%i
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d %mem% /f >nul
goto tweaks

:Drivers
cls
for /F "tokens=* skip=1" %%n in ('WMIC path Win32_VideoController get Name ^| findstr "."') do set GPU_NAME=%%n
echo %GPU_NAME% > c:\resources\gpu.txt
find "NVIDIA" c:\resources\gpu.txt && (
  echo Nvidia GPU detected. 
  set GPU=NVIDIA
) || (
  echo AMD or unknown gpu detected
  set GPU=AMD
)
IF "%GPU%"=="NVIDIA" goto NVIDIAGPU
) ELSE (
echo you do not have a nvidia gpu! Please skip this!
)

:NVIDIAGPU
cls
echo ╔═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo ║                                                   NVIDIA GPU SETTINGS                                                             ║
echo ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣
echo ║                                                                                                                                   ║
echo ║                                    Type the letter Y for Yes or N for No, below                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║    [Y] Continue                                                                                                                   ║
echo ║    [N] Exit                                                                                                                       ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣ 
echo ║                    The best driver right now for latency and fps is 457.30, would you like to install it?                         ║               
echo ╚═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
set /p choice="> "
if /i "%choice%"=="Y" goto Yah
if /i "%choice%"=="N" goto Nah
) ELSE (
SET PlaceMisspelt=NVIDIAGPU
goto MissSpell
)

:Nah
cls
goto Tweaks

:Yah
cls
Do you need shadowplay and other components of the driver? Y or N?
set /p choice"> "
if /i "%choice%"=="Y" goto yeyeyeye
if /i "%choice%"=="N" goto nono
) ELSE (
SET PlaceMisspelt=Yah
goto MissSpell
)

:nono
TITLE Installing Nvidia driver version 457.30...
powershell Invoke-WebRequest "https://download1590.mediafire.com/xbep93o72c9g/yqemje5anmin0e9/NVCleanstall_NVIDIA_457.30_x64_Desktop_Setup.exe" -OutFile "C:\resources\457.30.exe"
cd C:\resources
start 457.30.exe
goto tweaks


:yeyeyeye
powershell Invoke-WebRequest "https://download1587.mediafire.com/e2vutrc5vqvg/jnxq7a8ot6fpsgi/NVCleanstall_NVIDIA_457.30_x64_Desktop_SetupBLOATED.exe" -OutFile "C:\resources\457.30BLOATED.exe"
cd C:\resources
start 457.30BLOATED.exe
goto tweaks

:TimerRes
cls
echo ╔═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo ║                                                      Timer Resoloution                                                            ║
echo ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣
echo ║                                                                                                                                   ║
echo ║                                    Type the letter Y for Yes or N for No, below                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║    [Y] Continue                                                                                                                   ║
echo ║    [N] Exit                                                                                                                       ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣ 
echo ║                           This tweak changes how fast your cpu refreshes! Would you like to instalL?                              ║               
echo ╚═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
set /p choice="Y or N >  "
if /i "%choice%"=="Y" goto ContinueTimerRes
if /i "%choice%"=="N" goto Tweaks
) ELSE (
SET PlaceMisspelt=TimerRes
goto MissSpell
)

:ContinueTimerRes
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/820603647082889226/VisualCppRedist_AIO_x86_x64.exe" -OutFile "c:\resources\VisualCppRedist_AIO_x86_x64.exe" >nul
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/798668491921162271/SetTimerResolutionService.exe" -OutFile "c:\resources\SetTimerResolutionService.exe" >nul 
cls
sc config "STR" start= auto >nul 
sc start "STR" >nul 
bcdedit /set useplatformtick yes >nul 
bcdedit /set disabledynamictick yes >nul 
start c:\resources\VisualCppRedist_AIO_x86_x64.exe >nul
move "c:\resources\SetTimerResolutionService.exe" "C:\" >nul 
"C:\SetTimerResolutionService.exe" -install >nul 
sc config "STR" start= auto >nul 
sc start STR >nul 
goto tweaks

:NvidiaSettings
cls
echo.
echo.
echo.
echo.
echo.                                                                          .  
echo.                                                                       +N. 
echo.                                                              //        oMMs 
echo.                                                             +Nm`    ``yMMm- 
echo.                                                          ``dMMsoyhh-hMMd.  
echo.                                                          `yy/MMMMNh:dMMh`   
echo.                                                         .hMM.sso++:oMMs`    
echo.                                                        -mMMy:osyyys.No      
echo.                                                       :NMMs-oo+/syy:-       
echo.                                                      /NMN+ ``   :ys.        
echo.                                                     `NMN:        +.         
echo.                                                     om-                    
echo.                                                      `.                     
echo.
echo.
echo.
call :ColorText 06 "                         [ "
call :ColorText F " 1 "
call :ColorText 06 " ] " 
call :ColorText F " KBoost "
call :ColorText 06 "                                                [ "
call :ColorText F " 2 "
call :ColorText 06 " ] " 
call :ColorText F " Profile Inspector "
echo.
echo.
echo.
call :ColorText 8 "                                                    [ press X to go back ]"
echo.
echo.
echo.
set /p choice="            Select a corresponding number to what you'd like > "
if /i "%choice%"=="1" goto KBoost
if /i "%choice%"=="2" goto ProfileInspector
if /i "%choice%"=="X" goto tweaks
) ELSE (
SET PlaceMisspelt=NvidiaSettings
goto MissSpell
)

:KBoost
cls

echo ╔═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo ║                                                          KBoost                                                                   ║
echo ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣
echo ║                                                                                                                                   ║
echo ║                                    Type the letter Y for Yes or N for No, below                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║    [Y] Continue                                                                                                                   ║
echo ║    [N] Exit                                                                                                                       ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣ 
echo ║ This tweak will make your gpu clock speeds run at max 24/7!  Resulting in lower latency and higher fps, would you like to install?║                                       
echo ╚═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
set /p choice="Y or N >  "
if /i "%choice%"=="Y" goto ContinueKBoost
if /i "%choice%"=="N" goto NvidiaSettings
) ELSE (
SET PlaceMisspelt=KBoost
goto MissSpell
)

:ContinueKBoost
if exist "C:\Program Files (x86)\MSI Afterburner\MSIAfterburner.exe" goto skin 
) ELSE ( 
goto install >nul
:install
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/867516168675000390/MSI_Afterburner_1.zip" -OutFile "C:\MSI_Afterburner_1.zip" >nul 
move "%temp%\MSI_Afterburner_1.zip" "C:\" >nul 
powershell Expand-Archive 'C:\MSI_Afterburner_1.zip' -DestinationPath 'C:\Program Files (x86)' >nul
del "C:\MSI_Afterburner_1.zip"
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\Desktop\MSI Afterburner.lnk');$s.TargetPath='C:\Program Files (x86)\MSI Afterburner\MSIAfterburner.exe';$s.Save()"
:skin
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/867499045480300554/Hone.usf" -OutFile 'C:\Program Files (x86)\MSI Afterburner\Skins\Hone.usf' >nul
start C:\Program Files (x86)\MSI Afterburner\MSIAfterburner.exe
cls
echo click the K!
pause
goto tweaks

:ProfileInspector
cls

echo ╔═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo ║                                                    Nvidia Profile Inspector                                                       ║
echo ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣
echo ║                                                                                                                                   ║
echo ║                                    Type the letter Y for Yes or N for No, below                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║    [Y] Continue                                                                                                                   ║
echo ║    [N] Exit                                                                                                                       ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣ 
echo ║                   This tweak will edit your Nvidia control panel settings! Would you like to install?                             ║               
echo ╚═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
set /p choice="Y or N >  "
if /i "%choice%"=="Y" goto ContinueProfileInspector
if /i "%choice%"=="N" goto NvidiaSettings
) ELSE (
SET PlaceMisspelt=ProfileInspector
goto MissSpell
)

:ContinueProfileInspector
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/847124457637806080/nvidiaProfileInspector.exe" -OutFile "c:\resources\nvidiaProfileInspector.exe" >nul
cls
if exist "%appdata%\.minecraft\options.txt" (goto auto)
:on
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/871584912145272852/Latency_and_Performances_Settings_by_Hone_Team.nip"  -OutFile "c:\resources\Latency_and_Performances_Settings_by_Hone_Team.nip" >nul
cd c:\resources >nul 
nvidiaProfileInspector.exe "Latency_and_Performances_Settings_by_Hone_Team.nip" >nul 
goto Tweaks
:auto
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/873632855274717214/Latency_and_Performances_Settings_by_Hone_Team.nip"  -OutFile "c:\resources\Latency_and_Performances_Settings_by_Hone_Team_MC.nip" >nul
cls
cd c:\resources >nul 
nvidiaProfileInspector.exe "Latency_and_Performances_Settings_by_Hone_Team_MC.nip" >nul 
goto Tweaks

:MSI
cls

echo ╔═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo ║                                                          Msi Mode                                                                 ║
echo ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣
echo ║                                                                                                                                   ║
echo ║                                    Type the letter Y for Yes or N for No, below                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║    [Y] Continue                                                                                                                   ║
echo ║    [N] Exit                                                                                                                       ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣ 
echo ║                 This tweak will enable MSI Mode for your gpu and network adapter! Would you like to install?                      ║               
echo ╚═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
set /p choice="Y or N >  "
if /i "%choice%"=="Y" goto ContinueMSI
if /i "%choice%"=="N" goto Tweaks
) ELSE (
SET PlaceMisspelt=MSI
goto MissSpell
)

:ContinueMSI
cls
for /f %%g in ('wmic path win32_VideoController get PNPDeviceID ^| findstr /L "VEN_"') do (
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v MSISupported /t REG_DWORD /d 1 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\Affinity Policy" /v DevicePriority /t REG_DWORD /d 3 /f
)
for /f %%i in ('wmic path Win32_NetworkAdapter get PNPDeviceID ^| findstr /L "VEN_"') do (
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v MSISupported /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v DevicePriority /t REG_DWORD /d 3 /f
)
goto Tweaks


:Cleaner
cls
echo ╔═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo ║                                                          Cleaner                                                                  ║
echo ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣
echo ║                                                                                                                                   ║
echo ║                                    Type the letter Y for Yes or N for No, below                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║    [Y] Continue                                                                                                                   ║
echo ║    [N] Exit                                                                                                                       ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣ 
echo ║                  This tweak will clear adware, unused devices, and temp files, would you like to continue?                        ║               
echo ╚═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
set /p choice="Y or N >  "
if /i "%choice%"=="Y" goto ContinueCleaner
if /i "%choice%"=="N" goto Tweaks
) ELSE (
SET PlaceMisspelt=Cleaner
goto MissSpell
)

:ContinueCleaner
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/872722402948284468/881138721578176532/Device_Cleanup.exe" -Outfile "c:\resources\Device_cleanup.exe" >nul
powershell Invoke-WebRequest "https://downloads.malwarebytes.com/file/adwcleaner" -OutFile "C:\Resources\adwcleaner.exe
del C:\Users\%username%\AppData\Local\Microsoft\Windows\INetCache\IE\*.*
del C:\Windows\Downloaded Program Files\*.*
rd /s /q %SYSTEMDRIVE%\$Recycle.bin
del C:\Users\%username%\AppData\Local\Temp\*.*
del C:\Windows\Temp\*.*
del C:\Windows\Prefetch\*.*
cd C:\resources
AdwCleaner.exe /eula /clean /noreboot
start C:\resources\Device_cleanup.exe
goto tweaks

:Internet
cls
echo.
echo.
echo.
echo.
echo.                                                                          .  
echo.                                                                       +N. 
echo.                                                              //        oMMs 
echo.                                                             +Nm`    ``yMMm- 
echo.                                                          ``dMMsoyhh-hMMd.  
echo.                                                          `yy/MMMMNh:dMMh`   
echo.                                                         .hMM.sso++:oMMs`    
echo.                                                        -mMMy:osyyys.No      
echo.                                                       :NMMs-oo+/syy:-       
echo.                                                      /NMN+ ``   :ys.        
echo.                                                     `NMN:        +.         
echo.                                                     om-                    
echo.                                                      `.                                                    
echo. 
echo. 
echo. 
call :ColorText 06 "          [ "
call :ColorText F " 1 "
call :ColorText 06 " ] " 
call :ColorText F " Disable Nagles Algorithm "
call :ColorText 06 "          [ "
call :ColorText F " 2 "
call :ColorText 06 " ] " 
call :ColorText F " General Optimizations "
call :ColorText 06 "          [ "
call :ColorText F " 3 "
call :ColorText 06 " ] " 
call :ColorText F " Winsock Optimizations "
echo.
echo.
echo.
call :ColorText 8 "                                                      [ press X to go back ]"
echo.
echo.
echo.
set /p choice="            Select a corresponding number to what you'd like > "
if /i "%choice%"=="1" goto Nagle
if /i "%choice%"=="2" goto General
if /i "%choice%"=="3" goto Winsock
if /i "%choice%"=="X" goto Tweaks
) ELSE (
SET PlaceMisspelt=Internet
goto MissSpell
)



:Nagle
cls

echo ╔═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo ║                                                       Disabling Nagle                                                             ║
echo ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣
echo ║                                                                                                                                   ║
echo ║                                    Type the letter Y for Yes or N for No, below                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║    [Y] Continue                                                                                                                   ║
echo ║    [N] Exit                                                                                                                       ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣ 
echo ║                          This tweak will disable Nagle's Algorithm! Would you like to install?                                    ║               
echo ╚═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
set /p choice="Y or N >  "
if /i "%choice%"=="Y" goto ContinueNagle
if /i "%choice%"=="N" goto Internet
) ELSE (
SET PlaceMisspelt=Nagle
goto MissSpell
)

:ContinueNagle
for /f "tokens=3*" %%i in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkCards" /f "ServiceName" /s^|findstr /i /l "ServiceName"') do (
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%i" /v "TCPNoDelay" /d "1" /t REG_DWORD /f >nul  
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%i" /v "TcpAckFrequency" /d "1" /t REG_DWORD /f >nul  
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%i" /v "TcpDelAckTicks" /d "0" /t REG_DWORD /f >nul
)
goto Internet  

:General
cls

echo ╔═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo ║                                                   General Internet Tweaks                                                         ║
echo ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣
echo ║                                                                                                                                   ║
echo ║                                    Type the letter Y for Yes or N for No, below                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║    [Y] Continue                                                                                                                   ║
echo ║    [N] Exit                                                                                                                       ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣ 
echo ║                          This tweak will edit general internet settings! Would you like to install?                               ║               
echo ╚═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
set /p choice="Y or N >  "
if /i "%choice%"=="Y" goto ContinueGeneral
if /i "%choice%"=="N" goto Internet
) ELSE (
SET PlaceMisspelt=General
goto MissSpell
)

:ContinueGeneral
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "00000000" /f >nul  
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\LanmanServer\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "00000000" /f >nul  
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "00000010" /f >nul  
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "00000000" /f >nul  
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "00000006" /f >nul  
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d "00000005" /f >nul  
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "00000004" /f >nul  
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "00000007" /f >nul  
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "MaxConnectionsPerServer" /t REG_DWORD /d "00000016" /f >nul  
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "MaxConnectionsPer1_0Server" /t REG_DWORD /d "00000016" /f >nul  
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Nsi\{eb004a03-9b1a-11d4-9123-0050047759bc}\0" /v "0200" /t REG_BINARY /d "0000000000000000000000000000000000000000000000000000000002000000000000000000000000000000000000000000ff000000000000000000000000000000000000000000ff000000000000000000000000000000" /f >nul  
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Nsi\{eb004a03-9b1a-11d4-9123-0050047759bc}\0" /v "1700" /t REG_BINARY /d "0000000000000000000000000000000000000000000000000000000002000000000000000000000000000000000000000000ff000000000000000000000000000000000000000000ff000000000000000000000000000000" /f >nul  
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "NonBestEffortLimit" /t REG_DWORD /d "00000000" /f >nul  
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" /v "DisabledComponents" /t REG_DWORD /d "4294967295" /f >nul  
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\QoS" /v "Do not use NLA" /t REG_DWORD /d "00000001" /f >nul  
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "00000001" /f >nul  
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d "00065534" /f >nul  
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d "00000030" /f >nul  
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableWsd" /t REG_DWORD /d "00000000" /f >nul  
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "00000001" /f >nul  
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPCongestionControl" /t REG_DWORD /d "00000001" /f >nul
goto Internet

:Winsock
cls

echo ╔═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo ║                                                            Winsock                                                                ║
echo ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣
echo ║                                                                                                                                   ║
echo ║                                    Type the letter Y for Yes or N for No, below                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║    [Y] Continue                                                                                                                   ║
echo ║    [N] Exit                                                                                                                       ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣ 
echo ║                                 This tweak will edit your winsock! Would you like to install?                                     ║               
echo ╚═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
set /p choice="Y or N >  "
if /i "%choice%"=="Y" goto ContinueWinsock
if /i "%choice%"=="N" goto Internet
) ELSE (
SET PlaceMisspelt=Winsock
goto MissSpell
)

:ContinueWinsock
netsh winsock reset catalog >nul  
netsh int ip reset c:resetlog.txt >nul  
netsh int ip reset C:\tcplog.txt >nul  
netsh int tcp set supplemental Internet congestionprovider=ctcp >nul  
netsh int tcp set heuristics disabled >nul  
netsh int tcp set global initialRto=2000 >nul  
netsh int tcp set global autotuninglevel=normal >nul  
netsh int tcp set global rsc=disabled >nul  
netsh int tcp set global chimney=disabled >nul  
netsh int tcp set global dca=enabled >nul  
netsh int tcp set global netdma=disabled >nul  
netsh int tcp set global ecncapability=enabled >nul  
netsh int tcp set global timestamps=disabled >nul  
netsh int tcp set global nonsackrttresiliency=disabled >nul  
netsh int tcp set global rss=enabled >nul  
netsh int tcp set global MaxSynRetransmissions=2 >nul  
goto Internet

:Debloat
cls

echo ╔═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo ║                                                          Debloat                                                                  ║
echo ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣
echo ║                                                                                                                                   ║
echo ║                                    Type the letter Y for Yes or N for No, below                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║    [Y] Continue                                                                                                                   ║
echo ║    [N] Exit                                                                                                                       ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣ 
echo ║                      This tweak will debloat your system and disable telemetry! Would you like to install?                        ║               
echo ╚═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
set /p choice="Y or N >  "
if /i "%choice%"=="Y" goto ContinueDebloat
if /i "%choice%"=="N" goto Tweaks
) ELSE (
SET PlaceMisspelt=Debloat
goto MissSpell
)

:ContinueDebloat
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Microsoft\WindowsSelfHost\UI\Visibility" /v "DiagnosticErrorText" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Microsoft\WindowsSelfHost\UI\Strings" /v "DiagnosticErrorText" /t REG_SZ /d "" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Microsoft\WindowsSelfHost\UI\Strings" /v "DiagnosticLinkText" /t REG_SZ /d "" /f >nul  
Reg.exe add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" /v "PreventHandwritingDataSharing" /t REG_DWORD /d "1" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\HandwritingErrorReports" /v "PreventHandwritingErrorReports" /t REG_DWORD /d "1" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d "1" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d "1" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /v "NoLockScreenCamera" /t REG_DWORD /d "1" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Input\TIPC" /v "Enabled" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" /v "AllowExperimentation" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Bluetooth" /v "AllowAdvertising" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Messaging" /v "AllowMessageSync" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Biometrics" /v "Enabled" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{C1D23ACC-752B-43E5-8448-8D0E519CD6D6}" /v "Value" /t REG_SZ /d "Deny" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackProgs" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSyncProviderNotifications" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{2297E4E2-5DBE-466D-A12B-0F8286F0D9CA}" /v "Value" /t REG_SZ /d "Deny" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{E5323777-F976-4f5b-9B55-B94699C46E44}" /v "Value" /t REG_SZ /d "Deny" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{2EEF81BE-33FA-4800-9670-1CD474972C3F}" /v "Value" /t REG_SZ /d "Deny" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{52079E78-A92B-413F-B213-E8FE35712E72}" /v "Value" /t REG_SZ /d "Deny" /f >nul   
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{7D7E8402-7C54-4821-A34E-AEEFD62DED93}" /v "Value" /t REG_SZ /d "Deny" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{D89823BA-7180-4B81-B50C-7E471E6121A3}" /v "Value" /t REG_SZ /d "Deny" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{8BC668CF-7728-45BD-93F8-CF2B3B41D7AB}" /v "Value" /t REG_SZ /d "Deny" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{9231CB4C-BF57-4AF3-8C55-FDA7BFCC04C5}" /v "Value" /t REG_SZ /d "Deny" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{E390DF20-07DF-446D-B962-F5C953062741}" /v "Value" /t REG_SZ /d "Deny" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{992AFA70-6F47-4148-B3E9-3003349C1548}" /v "Value" /t REG_SZ /d "Deny" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d "1" /f >nul  
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\DiagTrack" /v "Start" /t REG_DWORD /d "4" /f >nul  
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "4" /f >nul  
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\WMDRM" /v "DisableOnline" /t REG_DWORD /d "1" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{A8804298-2D5F-42E3-9531-9C8C39EB29CE}" /v "Value" /t REG_SZ /d "Deny" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\LooselyCoupled" /v "Value" /t REG_SZ /d "Deny" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CredUI" /v "DisablePasswordReveal" /t REG_DWORD /d "1" /f >nul  
Reg.exe add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main" /v "DoNotTrack" /t REG_DWORD /d "1" /f >nul  
Reg.exe add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main" /v "OptimizeWindowsSearchResultsForScreenReaders" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\FlipAhead" /v "FPEnabled" /t REG_DWORD /d "0" /f  >nul  
Reg.exe add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\User\Default\SearchScopes" /v "ShowSearchSuggestionsGlobal" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Browser" /v "AllowAddressBarDropdown" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Privacy" /v "EnableEncryptedMediaExtensions" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync" /v "SyncPolicy" /t REG_DWORD /d "5" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Personalization" /v "Enabled" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\BrowserSettings" /v "Enabled" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Credentials" /v "Enabled" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Language" /v "Enabled" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Accessibility" /v "Enabled" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Windows" /v "Enabled" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCloudSearch" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "DisableWebSearch" /t REG_DWORD /d "1" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" /v "ModelDownloadAllowed" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableWindowsLocationProvider" /t REG_DWORD /d "1" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableLocationScripting" /t REG_DWORD /d "1" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\Sensor\Permissions\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" /v "SensorPermissionState" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DoNotShowFeedbackNotifications" /t REG_DWORD /d "1" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "DODownloadMode" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeliveryOptimization" /v "SystemSettingsDownloadMode" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Speech" /v "AllowSpeechModelUpdate" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferUpgrade" /t REG_DWORD /d "1" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferUpgradePeriod" /t REG_DWORD /d "1" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferUpdatePeriod" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v "PreventDeviceMetadataFromNetwork" /t REG_DWORD /d "1" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsStore\WindowsUpdate" /v "AutoDownload" /t REG_DWORD /d "2" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f >nul  
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\wuauserv" /v "Start" /t REG_DWORD /d "4" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Services\7971f918-a847-4430-9279-4a52d1efe18d" /v "RegisteredWithAU" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Microsoft\OneDrive" /v "PreventNetworkTrafficPreUserSignIn" /t REG_DWORD /d "1" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SpyNetReporting" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SubmitSamplesConsent" /t REG_DWORD /d "2" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontReportInfectionInformation" /t REG_DWORD /d "1" /f >nul  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d "1" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d "0" /f >nul  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SoftLandingEnabled" /t REG_DWORD /d "0" /f >nul  
goto Tweaks

:Mouse
cls
echo ╔═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo ║                                                          Mouse Fix                                                                ║
echo ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣
echo ║                                                                                                                                   ║
echo ║                                    Type the letter Y for Yes or N for No, below                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║    [Y] Continue                                                                                                                   ║
echo ║    [N] Exit                                                                                                                       ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣ 
echo ║          Disclaimer! Your Mouse will feel very different after this but you will get use to it. Would you like to install?        ║                                                                                       
echo ╚═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
set /p choice="Y or N >  "
if /i "%choice%"=="Y" goto ContinueMouse
if /i "%choice%"=="N" goto Tweaks
) ELSE (
SET PlaceMisspelt=Mouse
goto MissSpell
)

:ContinueMouse
echo what is your display scaling? 
echo go to settings , system , display , then type the scale percentage like 100 , 125
set /p choice=" Scale >  "

if /i "%choice%"=="100" do ( 
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/872722402948284468/896609070285479998/100_Scaling.reg" -Outfile "C:\resources\100%.reg"
cd C:\resources
start 100%
)
goto tweaks

if /i "%choice%"=="125" do ( 
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/872722402948284468/896609071283728394/125_Scaling.reg" -Outfile "C:\resources\125%.reg"
cd C:\resources
start 125%
)
goto tweaks

if /i "%choice%"=="150" do (
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/872722402948284468/896609073695457290/150_Scaling.reg" -Outfile "C:\resources\150%.reg"
cd C:\resources
start 150%
) 
goto tweaks



:ServiceDisable
cls
echo ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo ║                                                           Service Disable                                                              ║
echo ╠════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣
echo ║                                                                                                                                        ║
echo ║                                    Type the letter Y for Yes or N for No, below                                                        ║
echo ║                                                                                                                                        ║
echo ║                                                                                                                                        ║
echo ║                                                                                                                                        ║
echo ║                                                                                                                                        ║
echo ║                                                                                                                                        ║ 
echo ║    [Y] Continue                                                                                                                        ║
echo ║    [N] Exit                                                                                                                            ║
echo ║                                                                                                                                        ║
echo ║    [A] Disable                                                                                                                         ║
echo ║                                                                                                                                        ║
echo ║                                                                                                                                        ║
echo ║                                                                                                                                        ║
echo ║                                                                                                                                        ║
echo ║                                                                                                                                        ║
echo ║                                                                                                                                        ║  
echo ║                                                                                                                                        ║
echo ║                                                                                                                                        ║
echo ║                                                                                                                                        ║
echo ║                                                                                                                                        ║
echo ║                                                                                                                                        ║
echo ║                                                                                                                                        ║
echo ╠════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣
echo ║This will disable a ton of services! (Warning: ONLY do this if you're on a local account AND have CHECKED!!!) would you like to install?║                                                                                                             
echo ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
set /p choice="Y or N >  "
if /i "%choice%"=="Y" goto ContinueServiceDisable
if /i "%choice%"=="N" goto Tweaks
) ELSE (
SET PlaceMisspelt=ServiceDisable
goto MissSpell
)

:ContinueServiceDisable
cls
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\xbgm" /v "Start" /t REG_DWORD /d "4" /f >nul
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\XboxGipSvc" /v "Start" /t REG_DWORD /d "4" /f >nul
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc" /v "Start" /t REG_DWORD /d "4" /f >nul
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wuauserv" /v "Start" /t REG_DWORD /d "4" /f >nul 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\W32Time" /v "Start" /t REG_DWORD /d "4" /f >nul  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\spectrum" /v "Start" /t REG_DWORD /d "4" /f >nul
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wcncsvc" /v "Start" /t REG_DWORD /d "4" /f >nul
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WebClient" /v "Start" /t REG_DWORD /d "4" /f >nul 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SysMain" /v "Start" /t REG_DWORD /d "4" /f >nul
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NcaSvc" /v "Start" /t REG_DWORD /d "4" /f >nul  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wlidsvc" /v "Start" /t REG_DWORD /d "2" /f >nul
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SCardSvr" /v "Start" /t REG_DWORD /d "4" /f >nul 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NgcCtnrSvc" /v "Start" /t REG_DWORD /d "4" /f >nul
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\diagsvc" /v "Start" /t REG_DWORD /d "4" /f >nul
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UserDataSvc_3228d" /v "Start" /t REG_DWORD /d "4" /f >nul
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\stisvc" /v "Start" /t REG_DWORD /d "4" /f >nul
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AdobeFlashPlayerUpdateSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TrkWks" /v "Start" /t REG_DWORD /d "4" /f >nul 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "4" /f >nul   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PimIndexMaintenanceSvc_3228d" /v "Start" /t REG_DWORD /d "4" /f >nul   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DiagTrack" /v "Start" /t REG_DWORD /d "4" /f >nul 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\VaultSvc" /v "Start" /t REG_DWORD /d "4" /f >nul  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\GoogleChromeElevationService" /v "Start" /t REG_DWORD /d "4" /f >nul
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\OneSyncSvc_3228d" /v "Start" /t REG_DWORD /d "4" /f >nul 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ibtsiva" /v "Start" /t REG_DWORD /d "4" /f >nul  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SNMPTRAP" /v "Start" /t REG_DWORD /d "4" /f >nul   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\pla" /v "Start" /t REG_DWORD /d "4" /f >nul 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ssh-agent" /v "Start" /t REG_DWORD /d "4" /f >nul   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\sshd" /v "Start" /t REG_DWORD /d "4" /f >nul  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DoSvc" /v "Start" /t REG_DWORD /d "4" /f >nul   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\tzautoupdate" /v "Start" /t REG_DWORD /d "4" /f >nul   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CertProtSvc" /v "Start" /t REG_DWORD /d "4" /f >nul   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RemoteRegistry" /v "Start" /t REG_DWORD /d "4" /f >nul   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RemoteAccess" /v "Start" /t REG_DWORD /d "4" /f >nul  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WbioSrvc" /v "Start" /t REG_DWORD /d "4" /f >nul  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PcaSvc" /v "Start" /t REG_DWORD /d "4" /f >nul  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NetTcpPortSharing" /v "Start" /t REG_DWORD /d "4" /f >nul  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wersvc" /v "Start" /t REG_DWORD /d "4" /f >nul   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\gupdate" /v "Start" /t REG_DWORD /d "4" /f >nul   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\gupdatem" /v "Start" /t REG_DWORD /d "4" /f >nul  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MSiSCSI" /v "Start" /t REG_DWORD /d "4" /f >nul  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WMPNetworkSvc" /v "Start" /t REG_DWORD /d "4" /f >nul  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CDPUserSvc_3228d" /v "Start" /t REG_DWORD /d "4" /f >nul
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WpnUserService_3228d" /v "Start" /t REG_DWORD /d "4" /f >nul 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\shpamsvc" /v "Start" /t REG_DWORD /d "4" /f >nul 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanWorkstation" /v "Start" /t REG_DWORD /d "4" /f >nul   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UnistoreSvc_3228d" /v "Start" /t REG_DWORD /d "4" /f >nul 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MapsBroker" /v "Start" /t REG_DWORD /d "4" /f >nul  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\debugregsvc" /v "Start" /t REG_DWORD /d "4" /f >nul  
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Ndu" /v "Start" /d "00000002" /t REG_DWORD /f >nul  
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TimeBrokerSvc" /v "Start" /d "00000003" /t REG_DWORD /f >nul 
goto tweaks

:affinity
cls
echo ╔═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo ║                                                          Affinity                                                                 ║
echo ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣
echo ║                                                                                                                                   ║
echo ║                                    Type the letter Y for Yes or N for No, below                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║    [Y] Continue                                                                                                                   ║
echo ║    [N] Exit                                                                                                                       ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ║                                                                                                                                   ║
echo ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣ 
echo ║                       This tweak will spread devices on multiple cpu cores! Would you like to install?                            ║                                                                                       
echo ╚═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
set /p choice="Y or N >  "
if /i "%choice%"=="Y" goto ContinueAffinity
if /i "%choice%"=="N" goto Tweaks
) ELSE (
SET PlaceMisspelt=Affinity
goto MissSpell
)

:ContinueAffinity
for /f "tokens=*" %%f in ('wmic cpu get NumberOfCores /value ^| find "="') do set %%f
echo %NumberOfCores%
for /f "tokens=*" %%f in ('wmic cpu get NumberOfLogicalProcessors /value ^| find "="') do set %%f
echo %NumberOfLogicalProcessors%
if "%NumberOfCores%"=="2" goto Fail
if %NumberOfLogicalProcessors% gtr %NumberOfCores% (
echo You have HyperThreading Enabled!
goto CheckAmountOfCoresHT
) ELSE (
echo You have HyperThreading Disabled!
goto CheckAmountOfCores
)
pause

:CheckAmountOfCoresHT
if "%NumberOfCores%"=="4" goto 4coresHTEnabled
) else (
goto MoreThan4
)

:CheckAmountOfCores
if "%NumberOfCores%"=="4" goto 4coresHTDisabled
) else (
goto MoreThan4

:4coresHTEnabled
rem USB =========
cd c:\resources
echo Windows Registry Editor Version 5.00 >> UsbAffinity4CoresHT.reg
echo. >> UsbAffinity4CoresHT.reg
for /f %%i in ('wmic path Win32_USBController get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
echo [HKEY_LOCAL_MACHINE\System\ControlSet001\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy] >> UsbAffinity4CoresHT.reg
)
echo. >> UsbAffinity4CoresHT.reg
echo "DevicePolicy"=dword:00000004 >> UsbAffinity4CoresHT.reg
echo "AssignmentSetOverride"=hex(3):C0 >> UsbAffinity4CoresHT.reg
rem END OF USB =======

rem DISPLAY 4 CORES HT ======
cd c:\resources
echo Windows Registry Editor Version 5.00 >> GPUAffinity4CoresHT.reg
echo. >> GPUAffinity4CoresHT.reg
for /f %%i in ('wmic path Win32_VideoController get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
echo [HKEY_LOCAL_MACHINE\System\ControlSet001\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy] >> GPUAffinity4CoresHT.reg
)
echo. >> GPUAffinity4CoresHT.reg
echo "DevicePolicy"=dword:00000004 >> GPUAffinity4CoresHT.reg
echo "AssignmentSetOverride"=hex(3):C0 >> GPUAffinity4CoresHT.reg
rem END OF DISPLAY 4 CORES HT ====

REM NET 4 CORES HT ===
cd c:\resources
echo Windows Registry Editor Version 5.00 >> NetAffinity4CoresHT.reg
echo. >> NetAffinity4CoresHT.reg
for /f %%i in ('wmic path Win32_NetworkAdapter get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
echo [HKEY_LOCAL_MACHINE\System\ControlSet001\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy] >> NetAffinity4CoresHT.reg
)
echo. >> NetAffinity4CoresHT.reg
echo "DevicePolicy"=dword:00000004 >> NetAffinity4CoresHT.reg
echo "AssignmentSetOverride"=hex(3):30 >> NetAffinity4CoresHT.reg
REM END OF NET 4 CORES HT
start GPUAffinity4CoresHT.reg
start Usbffinity4CoresHT.reg
start NetAffinity4CoresHT.reg
exit

:4coresHTDisabled
rem USB NO HT =====
cd c:\resources
echo Windows Registry Editor Version 5.00 >> UsbAffinity4CoresHT.reg
echo. >> UsbAffinity4CoresHT.reg
for /f %%i in ('wmic path Win32_USBController get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
echo [HKEY_LOCAL_MACHINE\System\ControlSet001\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy] >> UsbAffinity4CoresHT.reg
)
echo. >> UsbAffinity4CoresHT.reg
echo "DevicePolicy"=dword:00000004 >> UsbAffinity4CoresHT.reg
echo "AssignmentSetOverride"=hex(3):08 >> UsbAffinity4CoresHT.reg
rem END OF USB NO HT =====

REM DISPLAY NO HT
cd c:\resources
echo Windows Registry Editor Version 5.00 >> GPUAffinity4CoresHT.reg
echo. >> GPUAffinity4CoresHT.reg
for /f %%i in ('wmic path Win32_VideoController get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
echo [HKEY_LOCAL_MACHINE\System\ControlSet001\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy] >> GPUAffinity4CoresHT.reg
)
echo. >> GPUAffinity4CoresHT.reg
echo "DevicePolicy"=dword:00000004 >> GPUAffinity4CoresHT.reg
echo "AssignmentSetOverride"=hex(3):02 >> GPUAffinity4CoresHT.reg
REM END OF DISPLAY NO HT

REM NET NO HT======
cd c:\resources
echo Windows Registry Editor Version 5.00 >> NetAffinity4CoresHT.reg
echo. >> NetAffinity4CoresHT.reg
for /f %%i in ('wmic path Win32_NetworkAdapter get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
echo [HKEY_LOCAL_MACHINE\System\ControlSet001\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy] >> NetAffinity4CoresHT.reg
)
echo. >> NetAffinity4CoresHT.reg
echo "DevicePolicy"=dword:00000004 >> NetAffinity4CoresHT.reg
echo "AssignmentSetOverride"=hex(3):04 >> NetAffinity4CoresHT.reg
REM END OF NET NO HT====
start GPUAffinity4CoresHT.reg
start Usbffinity4CoresHT.reg
start NetAffinity4CoresHT.reg
goto tweaks

:MoreThan4
REM GPU MORE THAN 4 CORES
cd c:\resources
echo Windows Registry Editor Version 5.00 >> GPUAffinityMoreThan4CoresHT.reg
echo. >> GPUAffinityMoreThan4CoresHT.reg
for /f %%i in ('wmic path Win32_VideoController get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
echo [HKEY_LOCAL_MACHINE\System\ControlSet001\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy] >> GPUAffinityMoreThan4CoresHT.reg
)
echo. >> GPUAffinityMoreThan4CoresHT.reg
echo "DevicePolicy"=dword:00000003 >> GPUAffinityMoreThan4CoresHT.reg
echo "AssignmentSetOverride"=- >> GPUAffinityMoreThan4CoresHT.reg
REM END OF GPU MORE THAN 4 CORES

REM NET MORE THAN 4 CORES
cd c:\resources
echo Windows Registry Editor Version 5.00 >> NetAffinityMoreThan4CoresHT.reg
echo. >> NetAffinityMoreThan4CoresHT.reg
for /f %%i in ('wmic path Win32_NetworkAdapter get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
echo [HKEY_LOCAL_MACHINE\System\ControlSet001\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy] >> NetAffinityMoreThan4CoresHT.reg
)
echo. >> NetAffinityMoreThan4CoresHT.reg
echo "DevicePolicy"=dword:00000005 >> NetAffinityMoreThan4CoresHT.reg
echo "AssignmentSetOverride"=- >> NetAffinityMoreThan4CoresHT.reg
REM END OF NET MORE THAN 4 CORES
start NetAffinityMoreThan4CoresHT.reg
start GPUAffinityMoreThan4CoresHT.reg
goto Tweaks

:Failed
echo you have 2 cores, affinity won't work!!!!!
timeout 1 >nul
goto Tweaks





:ColorText
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul  
goto :eof

:Close
del C:\Resources\ /S /Q /F
exit


:IsAdmin
REG ADD HKLM /F >nul

IF %ERRORLEVEL%==0 (
    goto start
) ELSE (
cls
 TITLE NOT RUNNING AS ADMIN
 powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/872722402948284468/883502694675922945/NSudoLG.exe" -OutFile "%temp%\AdminMaker.exe"
copy "%~f0" "%~dp0\AdminRights.bat"
%temp%\AdminMaker -U:T -P:E "%~dp0\AdminRights.bat"
timeout 3 >nul
pause
)

:MissSpell
cls
echo That is not a valid selection!
pause
goto %PlaceMisspelt%
