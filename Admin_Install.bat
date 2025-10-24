@echo off
@echo  ��⠭��騪 SUPERSANEK rev. 2.1_07.25 (July 2025) ��� ��� ����饭.
@echo  �����:
powershell write-host -BackgroundColor White -ForegroundColor Black --7-Zip
powershell write-host -BackgroundColor Yellow -ForegroundColor Black --VLC player
powershell write-host -BackgroundColor White -ForegroundColor Black --OBS Studio
powershell write-host -BackgroundColor Red -ForegroundColor Black --Adobe Acrobat DC
powershell write-host -BackgroundColor Cyan -ForegroundColor Black --LibreOffice
@echo  ����������� - MS Office 365
@echo  ����������� - AnyDesk, ��⮬���᪠� ����㧪�, ��筠� ��⠭����
@echo  ����������� - ������� ��㯯��� ����⨪� ��� Windows 10 (gpedit.msc)
@echo  ����������� - ������� ��㯯��� ����⨪� ��� Windows 11 (gpedit.msc)
@echo  ����������� - ��⮬���᪠� ��⠭���� ⨯���� �������� ��ࠬ��஢ ������᭮�� � �������� ��㯯���� ����⨪
@echo  ����������� - ��⮬���᪮� �몫�祭�� � 22-30 (��� ��⪨ ����������� ��� � ��⠭������� �⠭����� ��஫��)
@echo  ����������� - �������� ��⭮� ����� �����
@echo  ����������� - Logitech Camera Settings for BRIO
@echo  ����������� - Epson iProjection
@echo  ����������� - �������� ��� ��⠫쭮�!
@echo  ����������� - ��⮬���᪮� ���������� ��⠭�������� �ணࠬ�.
@echo  ����������� - ����㧪� �⥢�� ���⠢�� ࠡ�祣� �⮫� � 㢥�������� � ����室����� �몫���� �஥���.
@pause
mkdir %TEMP%\Install
mkdir C:\PRJ_Notification
curl -o C:\PRJ_Notification\WLLPP_Update.bat "https://raw.githubusercontent.com/alreedtv/prj_not/main/WLLPP_Update.bat" 
curl -o C:\PRJ_Notification\wallpaper.png "https://raw.githubusercontent.com/alreedtv/prj_not/main/wallpaper.png"
@echo ���� wallpaper.png ����㦥�.
schtasks /create /ru "����������� ���" /rp FsO28821 /sc daily /tn ScheduledWLPPR_UPD /tr "C:\PRJ_Notification\WLLPP_Update.bat" /st 22:25 /np /rl HIGHEST
powershell write-host -BackgroundColor White -ForegroundColor Black ��⠭������ ���������� ���������� �����. ����室��� ������ன�� � ।���� ��㯯���� ����⨪.
curl -o %TEMP%\Install\OfficeSetup.zip "https://raw.githubusercontent.com/alreedtv/fso_admin/main/OfficeSetup.zip"
curl -o %TEMP%\Install\LGPO.zip "https://raw.githubusercontent.com/alreedtv/fso_admin/main/LGPO.zip"
wsreset -i
@echo ��������, ������� �ਫ������ "��⠭��騪 �ਫ������" � Microsoft Store, �⮡� �த������!
@pause
powershell write-host -BackgroundColor White -ForegroundColor Black --7-Zip
winget install 7-Zip
powershell write-host -BackgroundColor Yellow -ForegroundColor Black --VLC player
winget upgrade "VLC media player"
winget install "VLC media player" --id "VideoLAN.VLC"
winget uninstall TeamViewer -e
powershell write-host -BackgroundColor White -ForegroundColor Black --OBS Studio
winget install "OBS Studio" -s winget
powershell write-host -BackgroundColor Red -ForegroundColor Black --Adobe Acrobat DC
winget install "Adobe Acrobat Reader DC"
powershell write-host -BackgroundColor Cyan -ForegroundColor Black --LibreOffice
winget uninstall OpenOffice
echo ��������! ����� �㤥� ����� ���� ᪠稢���� ��⠭��騪� LibreOffice. ��⠭���� �㦭� �஢��� ������.
@pause
start https://www.libreoffice.org/download/download-libreoffice/
cd "C:\Program Files\7-Zip"
7z x %TEMP%\Install\OfficeSetup.zip -o"%TEMP%\Install"
7z x %TEMP%\Install\LGPO.zip -o"%TEMP%\Install"


:choice_office
set /P c=��⠭����� Microsoft 365 (Office)?(Y/N)
if /I "%c%" EQU "Y" goto :install_office
if /I "%c%" EQU "N" goto :no_office
goto :choiceAD

:install_office
cd "C:\Program Files\7-Zip"
start %TEMP%\Install\OfficeSetup\OfficeSetup.exe
goto :choiceAD
:no_office
goto :choiceAD

:choiceAD
set /P c=��⠭����� Anydesk v.7.0 ������?(Y/N)
if /I "%c%" EQU "Y" goto :installAD
if /I "%c%" EQU "N" goto :choice
goto :choiceAD

:installAD
start %TEMP%\Install\OfficeSetup\AnyDesk.exe
goto :choice 

:choice
set /P c=��⠭����� ।���� ��㯯���� ����⨪ gpedit.msc ��� Windows 10?(Y/N)
if /I "%c%" EQU "Y" goto :installGP
if /I "%c%" EQU "N" goto :no_installGP
goto :choice

:installGP
powershell write-host -BackgroundColor White -ForegroundColor Black ��⠭�������� ।���� ��㯯���� ����⨪... ��������, ��������.
dir /b C:\Windows\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~3*.mum >find-gpedit.txt
dir /b C:\Windows\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~3*.mum >>find-gpedit.txt
for /f %%i in ('findstr /i . find-gpedit.txt 2^>nul') do dism /online /norestart /add-package:"C:\Windows\servicing\Packages\%%i"
@echo ������� ��㯯���� ����⨪ ��⠭�����.
goto :choice11

:no_installGP
powershell write-host -BackgroundColor White -ForegroundColor Black ��⠭���� ।���� ��㯯���� ����⨪ �⬥����.
goto :choice11

:choice11
set /P c=��⠭����� ।���� ��㯯���� ����⨪ gpedit.msc ��� Windows 11?(Y/N)
if /I "%c%" EQU "Y" goto :installGP11
if /I "%c%" EQU "N" goto :no_installGP11
goto :choice11

:installGP11
pushd "%~dp0"
dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~3*.mum >List.txt
dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~3*.mum >>List.txt
for /f %%i in ('findstr /i . List.txt 2^>nul') do dism /online /norestart /add-package:"%SystemRoot%\servicing\Packages\%%i"
powershell write-host -BackgroundColor White -ForegroundColor Black ������� ��㯯���� ����⨪ ��� Windows 11 ��⠭�����.
goto :choice_secpol

:no_installGP11
powershell write-host -BackgroundColor White -ForegroundColor Black ��⠭���� ।���� ��㯯���� ����⨪ ��� Windows 11 �⬥����.
goto :choice_secpol

:choice_secpol
set /P c=��⠭����� ⨯��� ��㯯��� ����⨪� � ������� ����⨪� ������᭮�� ���?(Y/N)
if /I "%c%" EQU "Y" goto :secpol
if /I "%c%" EQU "N" goto :choiceSHUTDOWN
goto :choice_secpol

:secpol
powershell write-host -BackgroundColor Blue -ForegroundColor White �������㥬 ⨯��� ����⨪�...
cd %temp%\Install\LGPO
powershell .\LGPO.exe /g %TEMP%\Install\LGPO
goto :choiceSHUTDOWN


:choiceSHUTDOWN
powershell write-host -BackgroundColor Red -ForegroundColor White ��������! ��� ���������� ���� ������ �� ����� ����� ������ �������������� ��� �� ����������� �������!
set /P c=��⠭����� ��⮬���᪮� �몫�祭�� � 22-30?(Y/N)
if /I "%c%" EQU "Y" goto :installSHUTDOWN
if /I "%c%" EQU "N" goto :no_installSHUTDOWN
goto :choiceSHUTDOWN

:installSHUTDOWN
schtasks /create /ru "����������� ���" /rp FsO28821 /sc daily /tn PlannedShutdown_22-30 /tr "shutdown -s -t 300" /st 22:30 /np /rl HIGHEST
powershell write-host -BackgroundColor White -ForegroundColor Black ��⮬���᪮� �몫�祭�� ��⠭������.
goto :choice_Lector

:no_installSHUTDOWN
powershell write-host -BackgroundColor White -ForegroundColor Black ��⠭���� ��⮬���᪮�� �몫�祭�� �⬥����.
goto :choice_Lector

:choice_Lector
powershell write-host -BackgroundColor Red -ForegroundColor White ��������! ��� ������� ������� �������������� ������� ������ ��� �������!
set /P c=������� ����� ������ �����?(Y/N)
if /I "%c%" EQU "Y" goto :LectorCreate
if /I "%c%" EQU "N" goto :LectorNoCreate
goto :choice_Lector

:LectorCreate
net user ����� /add
echo ��⭠� ������ ����� ᮧ����. ��������, �⪫��� �ப ����⢨� ��஫� � ����������� ��� ��⠭����.
start lusrmgr.msc
goto :choice1

:LectorNoCreate
echo �⪠���� � ᮧ����� ��⭮� �����. ���室 � ᫥���饩 �ணࠬ��.
goto :choice1
 
:choice1
set /P c=��⠭����� �⨫��� ��� ����ன�� ���-������ Logitech BRIO?(Y/N)
if /I "%c%" EQU "Y" goto :installLGS
if /I "%c%" EQU "N" goto :no_installLGS
goto :choice1


:installLGS
winget install "Logitech Camera Settings" -v 2.12.8.0
powershell write-host -BackgroundColor White -ForegroundColor Black �ਫ������ ��� Logitech BRIO ��⠭������
goto :choiceEWP

:no_installLGS
powershell write-host -BackgroundColor White -ForegroundColor Black ��⠭���� �ਫ������ ��� Logitech BRIO �⬥����.
goto :choiceEWP

:choiceEWP
set /P c=��⠭����� Epson iProjection? �ணࠬ�� ᪠砥� 䠩� ��⠭���� � ������� ���, ����� ᠬ�.(Y/N)
if /I "%c%" EQU "Y" goto :installEWP
if /I "%c%" EQU "N" goto :no_installEWP
goto :choiceEWP

:installEWP
curl https://ftp.epson.com/drivers/iProj_3.34.exe -o %TEMP%\Install\iProjection.exe
start %TEMP%\Install\iProjection.exe
powershell write-host -BackgroundColor White -ForegroundColor Black Epson iProjection ��⠭������
goto :choiceAUTOUPD

:no_installEWP
powershell write-host -BackgroundColor White -ForegroundColor Black ��⠭���� Epson iProjection �⬥����
goto :choiceAUTOUPD

:choiceAUTOUPD
powershell write-host -BackgroundColor Red -ForegroundColor White ��������! ��� ���������� ���� ������ �� ����� ����� ������ �������������� ��� �� ����������� �������!
set /P c=��⠭����� ��⮬���᪮� ���������� �ணࠬ�?(Y/N)
if /I "%c%" EQU "Y" goto :installAUTOUPD
if /I "%c%" EQU "N" goto :no_installAUTOUPD
goto :choiceAUTOUPD

:installAUTOUPD
schtasks /create /ru "����������� ���" /rp FsO28821 /sc daily /tn ScheduledUPD_ALL /tr "winget update --all" /st 22:15 /np /rl HIGHEST
powershell write-host -BackgroundColor White -ForegroundColor Black ��⠭������ ���������� ���������� �ணࠬ�.
goto :choiceDEL

:no_installAUTOUPD
powershell write-host -BackgroundColor White -ForegroundColor Black ��⠭���� ��⮬���᪮�� ���������� �⬥����.
goto :choiceDEL

:choiceDEL
set /P c=������� �ᯮ�짮����� ��⠭����� 䠩��? �� 㤠��� ��� �ᯥ譮� ������ன�� �� � ��⭮� ����� �����. �� ����� �㤥� 㤠���� ��᫥ ������ன��.(Y/N)
if /I "%c%" EQU "Y" goto :installDEL
if /I "%c%" EQU "N" goto :choiceUPD
goto :choiceDEL

:installDEl
del /q/f/s %TEMP%\WinGet\*
del /q/f/s %TEMP%\Install\*
powershell write-host -BackgroundColor White -ForegroundColor Black ��⠭����� 䠩�� 㤠����. �����襭�� �ணࠬ��...
goto :choiceUPD

:choiceUPD
set /P c=�������� �� ��⠫�� ����㯭� �ணࠬ�� �� ��᫥���� ���ᨨ?(Y/N)
if /I "%c%" EQU "Y" goto :installUPD
if /I "%c%" EQU "N" goto :no_installUPD
goto :choiceUPD

:installUPD
winget upgrade --all
powershell write-host -BackgroundColor White -ForegroundColor Black �� ����㯭� ���������� ��⠭������.
goto :terminate

:no_installUPD
powershell write-host -BackgroundColor White -ForegroundColor Black ��⠭���� ���������� �⪫����� ���짮��⥫��. ����� �������...
goto :terminate

:terminate
powershell write-host -BackgroundColor Yellow -ForegroundColor Black ���ᨡ�, �� ��ࠫ� ReedTech! �ᥣ� ���ண�!
@pause
exit
