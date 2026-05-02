; NSIS script NSIS-2
; Uninstall

SetCompressor zlib

; --------------------
; HEADER SIZE: 14141
; START HEADER SIZE: 300
; MAX STRING LENGTH: 1024
; STRING CHARS: 3287

OutFile [NSIS].exe
!include WinMessages.nsh



; --------------------
; LANG TABLES: 1
; LANG STRINGS: 60

Name "ASIO Link Pro"
BrandingText "Nullsoft Install System v2.46"

; LANG: 1033
LangString LSTR_0 1033 "Nullsoft Install System v2.46"
LangString LSTR_1 1033 "$(LSTR_2) Uninstall"
LangString LSTR_2 1033 "ASIO Link Pro"
LangString LSTR_3 1033 "Space available: "
LangString LSTR_4 1033 "Space required: "
LangString LSTR_5 1033 "Can't write: "
LangString LSTR_8 1033 "Could not find symbol: "
LangString LSTR_9 1033 "Could not load: "
LangString LSTR_10 1033 "Create folder: "
LangString LSTR_11 1033 "Create shortcut: "
LangString LSTR_12 1033 "Created uninstaller: "
LangString LSTR_13 1033 "Delete file: "
LangString LSTR_14 1033 "Delete on reboot: "
LangString LSTR_15 1033 "Error creating shortcut: "
LangString LSTR_16 1033 "Error creating: "
LangString LSTR_17 1033 "Error decompressing data! Corrupted installer?"
LangString LSTR_19 1033 "ExecShell: "
LangString LSTR_20 1033 "Execute: "
LangString LSTR_21 1033 "Extract: "
LangString LSTR_22 1033 "Extract: error writing to file "
LangString LSTR_23 1033 "Installer corrupted: invalid opcode"
LangString LSTR_24 1033 "No OLE for: "
LangString LSTR_25 1033 "Output folder: "
LangString LSTR_26 1033 "Remove folder: "
LangString LSTR_29 1033 "Skipped: "
LangString LSTR_30 1033 "Copy Details To Clipboard"
LangString LSTR_32 1033 B
LangString LSTR_33 1033 K
LangString LSTR_34 1033 M
LangString LSTR_35 1033 G
LangString LSTR_36 1033 "Error opening file for writing: $\r$\n$\r$\n$0$\r$\n$\r$\nClick Abort to stop the installation,$\r$\nRetry to try again, or$\r$\nIgnore to skip this file."
LangString LSTR_37 1033 0
LangString LSTR_38 1033 "Welcome to the $(LSTR_59) Uninstall Wizard"
LangString LSTR_39 1033 "MS Shell Dlg"
LangString LSTR_40 1033 "This wizard will guide you through the uninstallation of $(LSTR_59).$\r$\n$\r$\nBefore starting the uninstallation, make sure $(LSTR_59) is not running.$\r$\n$\r$\n$_CLICK"
LangString LSTR_41 1033 Uninstalling
LangString LSTR_42 1033 "Please wait while $(LSTR_59) is being uninstalled."
LangString LSTR_43 1033 "Uninstallation Complete"
LangString LSTR_44 1033 "Uninstall was completed successfully."
LangString LSTR_45 1033 "Uninstallation Aborted"
LangString LSTR_46 1033 "Uninstall was not completed successfully."
LangString LSTR_47 1033 8
LangString LSTR_48 1033 Custom
LangString LSTR_49 1033 Cancel
LangString LSTR_50 1033 "< &Back"
LangString LSTR_51 1033 &Uninstall
LangString LSTR_52 1033 "Click Uninstall to start the uninstallation."
LangString LSTR_53 1033 "Show &details"
LangString LSTR_54 1033 Completed
LangString LSTR_55 1033 "&Next >"
LangString LSTR_56 1033 "Click Next to continue."
LangString LSTR_57 1033 " "
LangString LSTR_58 1033 &Close
LangString LSTR_59 1033 "ASIO Link Pro"


; --------------------
; VARIABLES: 55

Var _0_
Var _1_
Var _2_
Var _3_
Var _4_
Var _5_
Var _6_
Var _7_
Var _8_
Var _9_
Var _10_
Var _11_
Var _12_
Var _13_
Var _14_
Var _15_
Var _16_
Var _17_
Var _18_
Var _19_
Var _20_
Var _21_
Var _22_
Var _23_
Var _24_
Var _25_
Var _26_
Var _27_
Var _28_
Var _29_
Var _30_
Var _31_
Var _32_
Var _33_
Var _34_
Var _35_
Var _36_
Var _37_
Var _38_
Var _39_
Var _40_
Var _41_
Var _42_
Var _43_
Var _44_
Var _45_
Var _46_
Var _47_
Var _48_
Var _49_
Var _50_
Var _51_
Var _52_
Var _53_
Var _54_


InstType un.$(LSTR_48)    ;  Custom
; uninstchild = $TEMP\$1u_.exe
; uninstcmd = "$\"$TEMP\$1u_.exe$\" $0 _?=$INSTDIR\"
; wininit = $WINDIR\wininit.ini


; --------------------
; PAGES: 3

; Page 0
UninstPage custom func_24 func_140 /ENABLECANCEL

; Page 1
UninstPage instfiles func_142 func_145 func_151
  CompletedText $(LSTR_54)    ;  Completed
  DetailsButtonText $(LSTR_53)    ;  "Show &details"

/*
; Page 2
UninstPage COMPLETED
*/


; --------------------
; SECTIONS: 1
; COMMANDS: 322

Function func_0
  InitPluginsDir
    ; Call Initialize_____Plugins
    ; SetDetailsPrint lastused
  File $PLUGINSDIR\modern-wizard.bmp
FunctionEnd


Function func_4
  LockWindow on
  ShowWindow $_6_ ${SW_HIDE}
  ShowWindow $_5_ ${SW_HIDE}
  ShowWindow $_0_ ${SW_HIDE}
  ShowWindow $_2_ ${SW_HIDE}
  ShowWindow $_4_ ${SW_HIDE}
  ShowWindow $_7_ ${SW_HIDE}
  ShowWindow $_8_ ${SW_SHOWNORMAL}
  LockWindow off
FunctionEnd


Function func_14
  LockWindow on
  ShowWindow $_6_ ${SW_SHOWNORMAL}
  ShowWindow $_5_ ${SW_SHOWNORMAL}
  ShowWindow $_0_ ${SW_SHOWNORMAL}
  ShowWindow $_2_ ${SW_SHOWNORMAL}
  ShowWindow $_4_ ${SW_SHOWNORMAL}
  ShowWindow $_7_ ${SW_SHOWNORMAL}
  ShowWindow $_8_ ${SW_HIDE}
  LockWindow off
FunctionEnd


Function func_24    ; Page 0, Pre
  nsDialogs::Create 1044
    ; Call Initialize_____Plugins
    ; SetOverwrite off
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push 1044
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll Create
  Pop $_16_
  nsDialogs::SetRTL $(LSTR_37)    ;  0
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_37)    ;  0
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll SetRTL
  SetCtlColors $_16_ "" 0xFFFFFF
  nsDialogs::CreateControl STATIC 0x40000000|0x10000000|0x04000000|0x0000000E|0x00000100 0 0u 0u 109u 193u ""
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push ""
    ; Push 193u
    ; Push 109u
    ; Push 0u
    ; Push 0u
    ; Push 0
    ; Push 0x40000000|0x10000000|0x04000000|0x0000000E|0x00000100
    ; Push STATIC
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll CreateControl
  Pop $_17_
  Push $0
  Push $1
  Push $2
  Push $R0
  StrCpy $R0 $_17_
  StrCpy $1 ""
  StrCpy $2 ""
  System::Call "*(i, i, i, i) i.s"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push "*(i, i, i, i) i.s"
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  Pop $0
  IntCmp $0 0 label_80
  System::Call "user32::GetClientRect(iR0, ir0)"
    ; Call Initialize_____Plugins
    ; AllowSkipFiles off
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push "user32::GetClientRect(iR0, ir0)"
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  System::Call "*$0(i, i, i .s, i .s)"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push "*$0(i, i, i .s, i .s)"
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  System::Free $0
    ; Call Initialize_____Plugins
    ; AllowSkipFiles on
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push $0
    ; CallInstDLL $PLUGINSDIR\System.dll Free
  Pop $1
  Pop $2
label_80:
  System::Call "user32::LoadImage(i0, ts, i 0, ir1, ir2, i0x0010) i.s" $PLUGINSDIR\modern-wizard.bmp
    ; Call Initialize_____Plugins
    ; AllowSkipFiles off
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push $PLUGINSDIR\modern-wizard.bmp
    ; Push "user32::LoadImage(i0, ts, i 0, ir1, ir2, i0x0010) i.s"
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  Pop $0
  SendMessage $R0 0x0172 0 $0
  Pop $R0
  Pop $2
  Pop $1
  Exch $0
    ; Push $0
    ; Exch
    ; Pop $0
  Pop $_18_
  nsDialogs::CreateControl STATIC 0x40000000|0x10000000|0x04000000|0x00000100 0x00000020 120u 10u 195u 28u $(LSTR_38)    ;  "Welcome to the $(LSTR_59) Uninstall Wizard" "ASIO Link Pro"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_38)    ;  "Welcome to the $(LSTR_59) Uninstall Wizard" "ASIO Link Pro"
    ; Push 28u
    ; Push 195u
    ; Push 10u
    ; Push 120u
    ; Push 0x00000020
    ; Push 0x40000000|0x10000000|0x04000000|0x00000100
    ; Push STATIC
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll CreateControl
  Pop $_19_
  SetCtlColors $_19_ "" 0xFFFFFF
  CreateFont $_20_ $(LSTR_39) 12 700    ;  "MS Shell Dlg"
  SendMessage $_19_ ${WM_SETFONT} $_20_ 0
  nsDialogs::CreateControl STATIC 0x40000000|0x10000000|0x04000000|0x00000100 0x00000020 120u 45u 195u 130u $(LSTR_40)    ;  "This wizard will guide you through the uninstallation of $(LSTR_59).$\r$\n$\r$\nBefore starting the uninstallation, make sure $(LSTR_59) is not running.$\r$\n$\r$\n$_CLICK" "ASIO Link Pro" "ASIO Link Pro"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_40)    ;  "This wizard will guide you through the uninstallation of $(LSTR_59).$\r$\n$\r$\nBefore starting the uninstallation, make sure $(LSTR_59) is not running.$\r$\n$\r$\n$_CLICK" "ASIO Link Pro" "ASIO Link Pro"
    ; Push 130u
    ; Push 195u
    ; Push 45u
    ; Push 120u
    ; Push 0x00000020
    ; Push 0x40000000|0x10000000|0x04000000|0x00000100
    ; Push STATIC
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll CreateControl
  Pop $_21_
  SetCtlColors $_21_ "" 0xFFFFFF
  Call func_4
  Call func_185
  nsDialogs::Show
    ; Call Initialize_____Plugins
    ; AllowSkipFiles on
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll Show
  Call func_14
  IntCmp $_18_ 0 label_139
  System::Call gdi32::DeleteObject(is) $_18_
    ; Call Initialize_____Plugins
    ; AllowSkipFiles off
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push $_18_
    ; Push gdi32::DeleteObject(is)
    ; CallInstDLL $PLUGINSDIR\System.dll Call
label_139:
FunctionEnd


Function func_140    ; Page 0, Leave
  Call func_200
FunctionEnd


Function func_142    ; Page 1, Pre
  SendMessage $_0_ ${WM_SETTEXT} 0 STR:$(LSTR_41)    ;  Uninstalling
  SendMessage $_2_ ${WM_SETTEXT} 0 STR:$(LSTR_42)    ;  "Please wait while $(LSTR_59) is being uninstalled." "ASIO Link Pro"
FunctionEnd


Function func_145    ; Page 1, Show
  FindWindow $_38_ "#32770" "" $HWNDPARENT
  GetDlgItem $_39_ $_38_ 1006
  GetDlgItem $_40_ $_38_ 1004
  GetDlgItem $_41_ $_38_ 1027
  GetDlgItem $_42_ $_38_ 1016
FunctionEnd


Function func_151    ; Page 1, Leave
  IfAbort label_155
  SendMessage $_0_ ${WM_SETTEXT} 0 STR:$(LSTR_43)    ;  "Uninstallation Complete"
  SendMessage $_2_ ${WM_SETTEXT} 0 STR:$(LSTR_44)    ;  "Uninstall was completed successfully."
  Goto label_157
label_155:
  SendMessage $_0_ ${WM_SETTEXT} 0 STR:$(LSTR_45)    ;  "Uninstallation Aborted"
  SendMessage $_2_ ${WM_SETTEXT} 0 STR:$(LSTR_46)    ;  "Uninstall was not completed successfully."
label_157:
FunctionEnd


Function .onGUIInit
  GetDlgItem $_0_ $HWNDPARENT 1037
  CreateFont $_1_ $(LSTR_39) $(LSTR_47) 700    ;  "MS Shell Dlg" 8
  SendMessage $_0_ ${WM_SETFONT} $_1_ 0
  GetDlgItem $_2_ $HWNDPARENT 1038
  SetCtlColors $_0_ "" 0xFFFFFF
  SetCtlColors $_2_ "" 0xFFFFFF
  InitPluginsDir
    ; Call Initialize_____Plugins
    ; SetDetailsPrint lastused
  SetOverwrite on
  AllowSkipFiles on
  File $PLUGINSDIR\modern-header.bmp
  SetBrandingImage /IMGID=1046 /RESIZETOFIT $PLUGINSDIR\modern-header.bmp
  GetDlgItem $_3_ $HWNDPARENT 1034
  SetCtlColors $_3_ "" 0xFFFFFF
  GetDlgItem $_4_ $HWNDPARENT 1039
  SetCtlColors $_4_ "" 0xFFFFFF
  GetDlgItem $_6_ $HWNDPARENT 1028
  SetCtlColors $_6_ /BRANDING ""
  GetDlgItem $_5_ $HWNDPARENT 1256
  SetCtlColors $_5_ /BRANDING ""
  SendMessage $_5_ ${WM_SETTEXT} 0 "STR:$(LSTR_0) "    ;  "Nullsoft Install System v2.46"
  GetDlgItem $_7_ $HWNDPARENT 1035
  GetDlgItem $_8_ $HWNDPARENT 1045
  GetDlgItem $_9_ $HWNDPARENT 1
  GetDlgItem $_10_ $HWNDPARENT 2
  GetDlgItem $_11_ $HWNDPARENT 3
  Call func_0
FunctionEnd


Function .onUserAbort
FunctionEnd


Function func_185
  nsDialogs::CreateControl BUTTON 0x40000000|0x10000000|0x04000000|0x00010000|0x00000000|0x00000C00|0x00000003|0x00002000 0 120u -18u 50% 12u "Delete all settings"
    ; Call Initialize_____Plugins
    ; SetOverwrite off
    ; AllowSkipFiles off
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push "Delete all settings"
    ; Push 12u
    ; Push 50%
    ; Push -18u
    ; Push 120u
    ; Push 0
    ; Push 0x40000000|0x10000000|0x04000000|0x00010000|0x00000000|0x00000C00|0x00000003|0x00002000
    ; Push BUTTON
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll CreateControl
  Pop $_13_
  SetCtlColors $_13_ "" 0xFFFFFF
FunctionEnd


Function func_200
  SendMessage $_13_ 0x00F0 0 0 $0
  IntCmp $0 0 label_208
  DeleteRegKey HKCU Software\ODeusAudio\ASIOLinkPro
  DeleteRegKey /ifempty HKCU Software\ODeusAudio
  DeleteRegKey HKLM SOFTWARE\ODeusAudio\ASIOLinkPro
  DeleteRegKey /ifempty HKLM Software\ODeusAudio
  DeleteRegValue HKCU SOFTWARE\Microsoft\Windows\CurrentVersion\Run ASIOLINKPRO
  Delete $SYSDIR\drivers\asiovadpro.dat
label_208:
FunctionEnd


Section Uninstall ; Section_0
  SetShellVarContext all
  SetRegView 32
  DeleteRegKey HKLM Software\Microsoft\Windows\CurrentVersion\Uninstall\ASIOLinkPro
  DeleteRegKey HKLM SOFTWARE\ASIOLinkPro
  System::Call kernel32::GetCurrentProcess()i.s
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push kernel32::GetCurrentProcess()i.s
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  System::Call kernel32::IsWow64Process(is,*i.s)
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push kernel32::IsWow64Process(is,*i.s)
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  Pop $_54_
  StrCmp $_54_ 0 label_228
  ExecWait "regsvr32.exe /s /u $\"$INSTDIR\x64\asiolink.dll$\"" $0
  StrCmp $0 0 label_228
  MessageBox MB_OK "Unregistering ASIO Link Pro failed, continuing anyway"
label_228:
  ExecWait "regsvr32.exe /s /u $\"$INSTDIR\asiolink.dll$\"" $0
  StrCmp $0 0 label_231
  MessageBox MB_OK "Unregistering ASIO Link Pro 32 failed, continuing anyway"
label_231:
  System::Call kernel32::GetCurrentProcess()i.s
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push kernel32::GetCurrentProcess()i.s
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  System::Call kernel32::IsWow64Process(is,*i.s)
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push kernel32::IsWow64Process(is,*i.s)
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  Pop $_54_
  StrCmp $_54_ 0 label_250
  SetOutPath $INSTDIR\x64
  nsExec::ExecToLog "$\"$INSTDIR\x64\installer.exe$\" uninstall"
    ; Call Initialize_____Plugins
    ; AllowSkipFiles on
    ; File $PLUGINSDIR\nsExec.dll
    ; SetDetailsPrint lastused
    ; Push "$\"$INSTDIR\x64\installer.exe$\" uninstall"
    ; CallInstDLL $PLUGINSDIR\nsExec.dll ExecToLog
  Goto label_256
label_250:
  SetOutPath $INSTDIR
  nsExec::ExecToLog "$\"$INSTDIR\installer.exe$\" uninstall"
    ; Call Initialize_____Plugins
    ; AllowSkipFiles off
    ; File $PLUGINSDIR\nsExec.dll
    ; SetDetailsPrint lastused
    ; Push "$\"$INSTDIR\installer.exe$\" uninstall"
    ; CallInstDLL $PLUGINSDIR\nsExec.dll ExecToLog
label_256:
  Pop $0
  IntCmp $0 2 0 label_260 label_260
  MessageBox MB_OK "A reboot is required to complete the uninstall"
  SetErrorLevel 2
label_260:
  IntCmp $0 1 0 label_264 label_264
  MessageBox MB_OK "There was a problem uninstalling the ASIO Link Pro"
  MessageBox MB_OK "Manually uninstall ASIOVADPRO in device manager"
  SetErrorLevel 2
label_264:
  System::Call kernel32::GetCurrentProcess()i.s
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push kernel32::GetCurrentProcess()i.s
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  System::Call kernel32::IsWow64Process(is,*i.s)
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push kernel32::IsWow64Process(is,*i.s)
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  Pop $_54_
  StrCmp $_54_ 0 label_290
  SetOutPath $INSTDIR\x64
  Delete $INSTDIR\x64\asiolink.dll
  Delete $INSTDIR\x64\asiolinktool.exe
  Delete $INSTDIR\x64\installer.exe
  Delete $INSTDIR\x64\difxapi.dll
  Delete $INSTDIR\x64\asiovadpro.inf
  Delete $INSTDIR\x64\asiovadpro.cat
  Delete $INSTDIR\x64\asiovadpro.sys
  SetOutPath $INSTDIR
  Delete $INSTDIR\asiolink.dll
  Delete $INSTDIR\asiolinktool.exe
  Delete $INSTDIR\uninstall.exe
  Delete "$INSTDIR\ASIO Link Technology.pdf"
  Goto label_300
label_290:
  SetOutPath $INSTDIR
  Delete $INSTDIR\asiolink.dll
  Delete $INSTDIR\asiolinktool.exe
  Delete $INSTDIR\installer.exe
  Delete $INSTDIR\difxapi.dll
  Delete $INSTDIR\asiovadpro.inf
  Delete $INSTDIR\asiovadpro.cat
  Delete $INSTDIR\asiovadpro.sys
  Delete $INSTDIR\uninstall.exe
  Delete "$INSTDIR\ASIO Link Technology.pdf"
label_300:
  ReadRegStr $_37_ HKLM Software\ASIOLinkPro "Start Menu Folder"
  StrCmp $_37_ "" label_304
  StrCpy $_12_ $_37_
  Goto label_305
label_304:
  StrCpy $_12_ $(LSTR_2)    ;  "ASIO Link Pro"
label_305:
  Delete $SMPROGRAMS\$_12_\*.*
  RMDir $SMPROGRAMS\$_12_
SectionEnd


/*
Function Initialize_____Plugins
  SetDetailsPrint none
  StrCmp $PLUGINSDIR "" 0 label_318
  Push $0
  SetErrors
  GetTempFileName $0
  Delete $0
  CreateDirectory $0
  IfErrors label_319
  StrCpy $PLUGINSDIR $0
  Pop $0
label_318:
  Return

label_319:
  MessageBox MB_OK|MB_ICONSTOP "Error! Can't initialize plug-ins directory. Please try again later." /SD IDOK
  Quit
FunctionEnd
*/



; --------------------
; UNREFERENCED STRINGS:

/*
1 ProgramFilesDir
17 "C:\Program Files"
34 $PROGRAMFILES
38 CommonFilesDir
53 "$PROGRAMFILES\Common Files"
70 $COMMONFILES
*/
