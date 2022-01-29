
Name "Администратор KagamiShell"
!include "..\common\version_nsis.inc"

OutFile "setup.exe"
BGGradient 000000 000000 FFFFFF
BGAlpha 160
InstallDir "$PROGRAMFILES\KagamiShell\KagamiShell Admin"
InstallDirRegKey HKLM "SOFTWARE\KagamineP\KagamiShell\KagamiShellAdmin" "Install_Dir"
ComponentText "Выберите необходимые компоненты для установки"
DirText "Выберите папку для установки"
UninstallText "Данный мастер удалит компоненты с компьютера"
;ShowInstDetails show
AutoCloseWindow true
InstallColors /windows
UninstallExeName "uninstall.exe"


InstType "Базовая установка"
InstType "Полная установка"

Function .onInit
  IfAdmin RightsOK
    MessageBox MB_OK|MB_ICONEXCLAMATION "Для установки требуются права администратора."
    Abort
  RightsOK:

  GetACP $0
  StrCmp $0 "1251" _CYR
    MessageBox MB_OK|MB_ICONEXCLAMATION "В региональных настройках системы в пункте «Язык программ, не поддерживающих Юникод» указан язык, который не является кириллическим.$\nРекомендуется изменить его на русский, а также установить Россию в качестве страны.$\nВ противном случае правильная работа ПО не гарантируется."
  _CYR:

FunctionEnd


Function .onInstSuccess
  SetOutPath $INSTDIR
  Exec "$INSTDIR\ksdbconf.exe"
FunctionEnd


Function un.onInit
  IfAdmin RightsOK
    MessageBox MB_OK|MB_ICONSTOP "Для того чтобы удалить данную программу требуются права администратора."
  RightsOK:
FunctionEnd



Section ""
  SetOutPath $INSTDIR

  File "..\..\common\hh_wrapper\hh_wrapper.dll"
  File "..\..\common\help\help_all.chm"
  File "..\sql\*.dll"
  File "..\..\client\z\z_dll.dll"
  File "..\ksdbconf\ksdbconf.exe"
  File "..\ksdbbackup\ksdbbackup.exe"


  ;---------------------------
  ; the same list in client install!!!

  RmDir /r "$INSTDIR\update"

  SetOutPath "$INSTDIR\update\client\System32"
  File "..\..\client\ks_api\ks_api.dll"
  File "..\..\client\kshell\gina\ksgina.dll"

  SetOutPath "$INSTDIR\update\client\ks_folder"
  File "..\..\client\bodyacro\bodyacro.exe"
  File "..\..\client\bodybook\bodybook.exe"
  File "..\..\client\bodybt\bodybt.exe"
  File "..\..\client\bodybt\bftowdthunk.dll"
  File "..\..\client\bodyburn\bodyburn.exe"
  File "..\..\client\bodyburn\bodyburn.dll"
  File "..\..\client\bodycalc\bodycalc.exe"
  File "..\..\client\bodycam\bodycam.exe"
  File "..\..\client\bodyexpl\bodyexpl.exe"
  File "..\..\client\bodyexpl\bodyexpl.dll"
  File "..\..\client\bodyimgview\bodyimgview.exe"
  File "..\..\client\bodyiso\bodyiso.exe"
  File "..\..\client\bodymail\bodymail.exe"
  File "..\..\client\bodyminimize\bodyminimize.exe"
  File "..\..\client\bodymobile\bodymobile.exe"
  File "..\..\client\bodymouse\bodymouse.exe"
  File "..\..\client\bodymp\bodymp.exe"
  File "..\..\client\bodynotepad\bodynotepad.exe"
  File "..\..\client\bodyoffice\bodyoffice.dll"
  File "..\..\client\bodyoffice2000\bodyoffice2000.dll"
  File "..\..\client\bodyrecycle\bodyrecycle.exe"
  File "..\..\client\bodyscan\bodyscan.exe"
  File "..\..\client\bodyscan\VSTwain.dll"
  File "..\..\client\bodytm\bodytm.exe"
  File "..\..\client\bodywb\bodywb.exe"
  File "..\..\client\bodywb\dll\bodywb.dll"
  File "..\..\client\bodywrappers\*.exe"
  File /r "..\..\client\default_cnt\default"
  File "..\..\client\internat\indicdll.dll"
  File "..\..\client\internat\internat.exe"
  File "..\..\client\ks_shared\ks_shared.dll"
  File "..\..\client\ksblock\ksblock.exe"
  ;File "..\..\client\rsbrowser\rsbrowser.exe"
  File "..\..\client\kshell\dll\kshell.dll"
  File "..\..\client\kshell\exhook\ksexhook.dll"
  File "..\..\client\kshell\exhook\ksexhook64.dll"
  File "..\..\client\kshell\hook\kshelper.dll"
  File "..\..\client\kshell\hook\kshelper64.dll"
  File "..\..\client\kshell\inj_scan\inj_scan.dll"
  File "..\..\client\kshell\service\kshell_svc.exe"
  File "..\..\client\kshell\kshell.exe"
  File "..\..\client\ksoffindic\ksoffindic.exe"
  File "..\..\client\ksrules\ksrules.dll"
  File "..\..\client\ksrules\ksrules.exe"
  File "..\..\client\ksspoolcleaner\ksspoolcleaner.exe"
  File "..\..\client\kstempdrv\giveio.sys"
  File "..\..\common\redist\gdiplus.dll"
  File "..\..\common\redist\rtl70.bpl"
  File "..\..\common\redist\vcl70.bpl"
  File "..\..\common\redist\msvcr90.dll"
  File "..\..\common\redist\msvcp90.dll"
  File "..\..\common\redist\atl90.dll"
  File "..\..\common\redist\ib97e32.dll"
  File "..\..\common\redist\ib97u32.dll"
  File "..\..\common\redist\ibfs32.dll"

  File "..\..\client\rfmserver\rfmserver.exe"
  File "..\..\client\ksrdserver\ksrdserver.exe"
  
  ;-----
  ; NoShell Update list
  ;-----
  SetOutPath "$INSTDIR\update\client_no_shell\ks_folder"
  File "..\..\client\ks_shared\ks_shared.dll"
  File "..\..\client\kshell\dll\kshell.dll"
  File "..\..\client\kshell\service\kshell_svc.exe"
  File "..\..\common\redist\rtl70.bpl"
  File "..\..\common\redist\vcl70.bpl"
  ;-----------------------

  
  SetOutPath $INSTDIR
  
  WriteRegStr HKLM "SOFTWARE\KagamineP\KagamiShell\KagamiShellAdmin" "Install_Dir" "$INSTDIR"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\KagamiShellAdmin" "DisplayName" "Администратор KagamiShell"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\KagamiShellAdmin" "UninstallString" '"$INSTDIR\uninstall.exe"'

  CreateDirectory "$SMPROGRAMS_COMMON\KagamiShell\Администратор KagamiShell"
  CreateShortCut "$SMPROGRAMS_COMMON\KagamiShell\Администратор KagamiShell\Удаление программы.lnk" "$INSTDIR\uninstall.exe"
  CreateShortCut "$SMPROGRAMS_COMMON\KagamiShell\Администратор KagamiShell\Конфигурация базы данных.lnk" "$INSTDIR\ksdbconf.exe"
  CreateShortCut "$SMPROGRAMS_COMMON\KagamiShell\Администратор KagamiShell\Сохранение и восстановление базы данных.lnk" "$INSTDIR\ksdbbackup.exe"
  CreateShortCut "$SMPROGRAMS_COMMON\KagamiShell\Администратор KagamiShell\Справка по KagamiShell.lnk" "$INSTDIR\help_all.chm"
SectionEnd


Section "Программа глобальных настроек"
  SectionIn 1-2
  
  SetOutPath $INSTDIR
  File "..\classv\classv.exe"
  File "..\needed\saver_example.ini"
  File "..\kssettings\kssettings.exe"
  File "..\kssettings\kssettings.dll"
  File "..\..\client\kshell\kscfg.dll"
  File "..\..\client\ks_shared\ks_shared.dll"

  CreateShortCut "$SMPROGRAMS_COMMON\KagamiShell\Администратор KagamiShell\Глобальные настройки.lnk" "$INSTDIR\kssettings.exe"
SectionEnd

SectionDivider

Section "Программа просмотра отчетов"
  SectionIn 1-2
  
  SetOutPath $INSTDIR
  File "..\ksdbview\ksdbview.exe"

  CreateShortCut "$SMPROGRAMS_COMMON\KagamiShell\Администратор KagamiShell\Просмотр отчетов.lnk" "$INSTDIR\ksdbview.exe"
SectionEnd


Section "Удаленный файловый менеджер"
  SectionIn 2

  SetOutPath $INSTDIR
  File "..\rfmclient\rfmclient.exe"

  CreateShortCut "$SMPROGRAMS_COMMON\KagamiShell\Администратор KagamiShell\Удаленный файловый менеджер.lnk" "$INSTDIR\rfmclient.exe"
SectionEnd


Section "Удаленное управление рабочим столом"
  SectionIn 2

  SetOutPath $INSTDIR
  File "..\ksrdclient\ksrdclient.exe"
  File "..\ksrdclient\ksrdclient.dll"

  CreateShortCut "$SMPROGRAMS_COMMON\KagamiShell\Администратор KagamiShell\Удаленное управление рабочим столом.lnk" "$INSTDIR\ksrdclient.exe"
SectionEnd



Section "Uninstall"
  call un.onInit

  RMDir /r "$SMPROGRAMS_COMMON\KagamiShell\Администратор KagamiShell"

  DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\KagamiShellAdmin"
  DeleteRegValue HKLM "SOFTWARE\KagamineP\KagamiShell\KagamiShellAdmin" "Install_Dir"

  RmDir /r "$INSTDIR"

SectionEnd

