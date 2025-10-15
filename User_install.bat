@echo off
@echo  “áâ ®¢é¨ª SUPERSANEK rev. 2.01_02.25 (Feb 2025) § ¯ãáª ¥âáï.
@echo  “áâ ®¢¨¬:
powershell write-host -BackgroundColor White -ForegroundColor Black Ÿ¤¥ªá à ã§¥à
powershell write-host -BackgroundColor Yellow -ForegroundColor Black ZOOM Meetings
powershell write-host -BackgroundColor White -ForegroundColor Black Ž–ˆŽ€‹œŽ - €¢â®¬ â¨ç¥áª ï ®ç¨áâª  à ¡®ç¥£® áâ®«  ‹¥ªâ®à  à § ¢ 2 ¥¤¥«¨.
powershell write-host -BackgroundColor Yellow -ForegroundColor Black Ž–ˆŽ€‹œŽ - “¢¥¤®¬«¥¨ï "‚ëª«îç¨â¥ ¯à®¥ªâ®à"
mkdir %TEMP%\Install
powershell write-host -BackgroundColor White -ForegroundColor Black --Ÿ¤¥ªá
winget install "yandex browser" -s winget
powershell write-host -BackgroundColor Cyan -ForegroundColor White --Zoom Workplace 
winget install "zoom workplace" -s winget
:choiceDEL
set /P c=“¤ «¨âì ¨á¯®«ì§®¢ ë¥ ãáâ ®¢®çë¥ ä ©«ë?(Y/N)
if /I "%c%" EQU "Y" goto :installDEL
if /I "%c%" EQU "N" goto :choiceCLEANUP
goto :choiceDEL

:installDEl
del /q/f/s %TEMP%\WinGet\*
del /q/f/s %TEMP%\Install\*
powershell write-host -BackgroundColor White -ForegroundColor Black “áâ ®¢®çë¥ ä ©«ë ã¤ «¥ë.
goto :choiceCLEANUP

:choiceCLEANUP
set /P c=‘®§¤ âì § ¤ çã ¤«ï  ¢â®¬ â¨ç¥áª®© ®ç¨áâª¨ à ¡®ç¥£® áâ®« ? ‘à ¡ âë¢ ¥â ª ¦¤®¥ ¢®áªà¥á¥ì¥ ¢¥ç¥à®¬.(Y/N)
if /I "%c%" EQU "Y" goto :installCLEANUP
if /I "%c%" EQU "N" goto :choicePRJ_NOT
goto :choiceCLEANUP

:installCLEANUP
curl -o C:\PRJ_Notification\CLEANUP_DESKTOP.xml "https://raw.githubusercontent.com/alreedtv/prj_not/main/CLEANUP_DESKTOP.xml"
curl -o C:\PRJ_Notification\cleanup.bat "https://raw.githubusercontent.com/alreedtv/prj_not/main/cleanup.bat"
schtasks /create /xml "C:\PRJ_Notification\CLEANUP_DESKTOP.xml" /tn "CLEANUP_DESKTOP" /ru "%COMPUTERNAME%\‹¥ªâ®à"
goto :choicePRJ_NOT

:choicePRJ_NOT
set /P c=‘®§¤ âì § ¤ çã ¤«ï ã¢¥¤®¬«¥¨© ® ¢ëª«îç¥¨¨ ¯à®¥ªâ®à ? ‚¨¬ ¨¥!  ¡®â ¥â â®«ìª® á ãç¥â®© § ¯¨áìî á ¨¬¥¥¬ "‹¥ªâ®à"!!!(Y/N)
if /I "%c%" EQU "Y" goto :installPRJ
if /I "%c%" EQU "N" goto :terminate
goto :choicePRJ_NOT

:installPRJ
curl -o C:\PRJ_Notification\prj_logo.png "https://raw.githubusercontent.com/alreedtv/prj_not/main/prj_logo.png" 
curl -o C:\PRJ_Notification\prj_not.ps1 "https://raw.githubusercontent.com/alreedtv/prj_not/main/prj_not.ps1"
curl -o C:\PRJ_Notification\prj_notification.xml "https://raw.githubusercontent.com/alreedtv/prj_not/main/prj_not_schd.xml"
curl -o C:\PRJ_Notification\commands_for_powershell.txt "https://raw.githubusercontent.com/alreedtv/prj_not/main/commands_for_powershell.txt"
powershell write-host -BackgroundColor White -ForegroundColor Black ‚ë¯®«¨â¥ ª®¬ ¤ë ¨§ ¡«®ª®â  ¨ § ªà®©â¥ ¥£®, çâ®¡ë ¯à®¤®«¦¨âì.
notepad.exe "C:\PRJ_Notification\commands_for_powershell.txt"
@pause
schtasks /create /xml "C:\PRJ_Notification\prj_notification.xml" /tn "PRJ_NOT" /ru "%COMPUTERNAME%\‹¥ªâ®à"
powershell write-host -BackgroundColor White -ForegroundColor Black ‡ ¤ ç    ã¢¥¤®¬«¥¨ï ãáâ ®¢«¥ . ®¦ «ã©áâ , ®âª«îç¨â¥  ¢â®¢ª«îç¥¨¥ à¥¦¨¬  "¥ ¡¥á¯®ª®¨âì" ¢  áâà®©ª å Š.
goto :terminate

:terminate
powershell write-host -BackgroundColor Yellow -ForegroundColor Black ‘¯ á¨¡®, çâ® ¢ë¡à «¨ ReedTech! ‚á¥£® ¤®¡à®£®!
@pause
exit
