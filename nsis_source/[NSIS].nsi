; NSIS script NSIS-2
; Install

SetCompressor zlib

; --------------------
; HEADER SIZE: 81727
; START HEADER SIZE: 300
; MAX STRING LENGTH: 1024
; STRING CHARS: 55717

OutFile [NSIS].exe
!include WinMessages.nsh

InstallDirRegKey HKLM Software\ASIOLinkPro Install_Dir
LicenseBkColor /windows


; --------------------
; LANG TABLES: 1
; LANG STRINGS: 82

Name "ASIO Link Pro"
BrandingText "Nullsoft Install System v2.46"

; LANG: 1033
LangString LSTR_0 1033 "Nullsoft Install System v2.46"
LangString LSTR_1 1033 "$(LSTR_2) Setup"
LangString LSTR_2 1033 "ASIO Link Pro"
LangString LSTR_3 1033 "Space available: "
LangString LSTR_4 1033 "Space required: "
LangString LSTR_5 1033 "Can't write: "
LangString LSTR_8 1033 "Could not find symbol: "
LangString LSTR_9 1033 "Could not load: "
LangString LSTR_10 1033 "Create folder: "
LangString LSTR_11 1033 "Create shortcut: "
LangString LSTR_13 1033 "Delete file: "
LangString LSTR_14 1033 "Delete on reboot: "
LangString LSTR_15 1033 "Error creating shortcut: "
LangString LSTR_17 1033 "Error decompressing data! Corrupted installer?"
LangString LSTR_19 1033 "ExecShell: "
LangString LSTR_20 1033 "Execute: "
LangString LSTR_21 1033 "Extract: "
LangString LSTR_22 1033 "Extract: error writing to file "
LangString LSTR_23 1033 "Installer corrupted: invalid opcode"
LangString LSTR_24 1033 "No OLE for: "
LangString LSTR_25 1033 "Output folder: "
LangString LSTR_29 1033 "Skipped: "
LangString LSTR_30 1033 "Copy Details To Clipboard"
LangString LSTR_32 1033 B
LangString LSTR_33 1033 K
LangString LSTR_34 1033 M
LangString LSTR_35 1033 G
LangString LSTR_36 1033 "Error opening file for writing: $\r$\n$\r$\n$0$\r$\n$\r$\nClick Abort to stop the installation,$\r$\nRetry to try again, or$\r$\nIgnore to skip this file."
LangString LSTR_37 1033 0
LangString LSTR_38 1033 "Welcome to the $(LSTR_81) Setup Wizard"
LangString LSTR_39 1033 "MS Shell Dlg"
LangString LSTR_40 1033 "This wizard will guide you through the installation of $(LSTR_81).$\r$\n$\r$\nIt is recommended that you close all other applications before starting Setup. This will make it possible to update relevant system files without having to reboot your computer.$\r$\n$\r$\n$_CLICK"
LangString LSTR_41 1033 "If you accept the terms of the agreement, click I Agree to continue. You must accept the agreement to install $(LSTR_81)."
LangString LSTR_42 1033 "License Agreement"
LangString LSTR_43 1033 "Please review the license terms before installing $(LSTR_81)."
LangString LSTR_44 1033 "Press Page Down to see the rest of the agreement."
LangString LSTR_45 1033 "Choose Install Location"
LangString LSTR_46 1033 "Choose the folder in which to install $(LSTR_81)."
LangString LSTR_47 1033 "Choose Start Menu Folder"
LangString LSTR_48 1033 "Choose a Start Menu folder for the $(LSTR_81) shortcuts."
LangString LSTR_49 1033 "Do not create shortcuts"
LangString LSTR_50 1033 "Select the Start Menu folder in which you would like to create the program's shortcuts. You can also enter a name to create a new folder."
LangString LSTR_51 1033 Installing
LangString LSTR_52 1033 "Please wait while $(LSTR_81) is being installed."
LangString LSTR_53 1033 "Installation Complete"
LangString LSTR_54 1033 "Setup was completed successfully."
LangString LSTR_55 1033 "Installation Aborted"
LangString LSTR_56 1033 "Setup was not completed successfully."
LangString LSTR_57 1033 &Finish
LangString LSTR_58 1033 "Completing the $(LSTR_81) Setup Wizard"
LangString LSTR_59 1033 "Your computer must be restarted in order to complete the installation of $(LSTR_81). Do you want to reboot now?"
LangString LSTR_60 1033 "Reboot now"
LangString LSTR_61 1033 "I want to manually reboot later"
LangString LSTR_62 1033 "$(LSTR_81) has been installed on your computer.$\r$\n$\r$\nClick Finish to close this wizard."
LangString LSTR_63 1033 8
LangString LSTR_64 1033 "Are you sure you want to quit $(LSTR_2) Setup?"
LangString LSTR_65 1033 Custom
LangString LSTR_66 1033 Cancel
LangString LSTR_67 1033 "< &Back"
LangString LSTR_68 1033 "&Next >"
LangString LSTR_69 1033 "Click Next to continue."
LangString LSTR_70 1033 "I &Agree"
LangString LSTR_71 1033 "Setup will install $(LSTR_81) in the following folder. To install in a different folder, click Browse and select another folder. $_CLICK"
LangString LSTR_72 1033 "Destination Folder"
LangString LSTR_73 1033 B&rowse...
LangString LSTR_74 1033 "Select the folder to install $(LSTR_81) in:"
LangString LSTR_75 1033 &Install
LangString LSTR_76 1033 "Click Install to start the installation."
LangString LSTR_77 1033 "Show &details"
LangString LSTR_78 1033 Completed
LangString LSTR_79 1033 " "
LangString LSTR_80 1033 &Close
LangString LSTR_81 1033 "ASIO Link Pro"


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


InstType $(LSTR_65)    ;  Custom
InstallDir $PROGRAMFILES\ASIOLinkPro
; install_directory_auto_append = ASIOLinkPro
; wininit = $WINDIR\wininit.ini


; --------------------
; PAGES: 7

; Page 0
Page custom func_57 func_173 /ENABLECANCEL

; Page 1
Page license func_175 func_178 func_184 /ENABLECANCEL
  LicenseText $(LSTR_41) $(LSTR_70)    ;  "If you accept the terms of the agreement, click I Agree to continue. You must accept the agreement to install $(LSTR_81)." "I &Agree" "ASIO Link Pro"
  LicenseData [LICENSE].rtf

; Page 2
Page directory func_185 func_188 func_196 /ENABLECANCEL
  DirText $(LSTR_71) $(LSTR_72) $(LSTR_73) $(LSTR_74)    ;  "Setup will install $(LSTR_81) in the following folder. To install in a different folder, click Browse and select another folder. $_CLICK" "Destination Folder" B&rowse... "Select the folder to install $(LSTR_81) in:" "ASIO Link Pro" "ASIO Link Pro"
  DirVar $CMDLINE

; Page 3
Page custom func_197 func_244 /ENABLECANCEL

; Page 4
Page instfiles func_245 func_248 func_254
  CompletedText $(LSTR_78)    ;  Completed
  DetailsButtonText $(LSTR_77)    ;  "Show &details"

/*
; Page 5
Page COMPLETED
*/

; Page 6
Page custom func_267 func_483


; --------------------
; SECTIONS: 1
; COMMANDS: 851

Function func_0
  Exch $R0
    ; Push $R0
    ; Exch
    ; Pop $R0
  Exch
  Exch $R1
    ; Push $R1
    ; Exch
    ; Pop $R1
  Push $R2
  Push $R3
  Push $R4
  Push $R5
  StrLen $R2 $R0
  StrLen $R3 $R1
  StrCpy $R4 0
label_14:
  StrCpy $R5 $R1 $R2 $R4
  StrCmp $R5 $R0 0 label_17
  Goto label_23
label_17:
  IntCmp $R4 $R3 0 label_19
  Goto label_23
label_19:
  IntOp $R4 $R4 + 1
label_20:
  Goto label_14
  Goto label_20
  Goto label_23
label_23:
  StrCpy $R0 $R1 "" $R4
  Pop $R5
  Pop $R4
  Pop $R3
  Pop $R2
  Pop $R1
  Exch $R0
    ; Push $R0
    ; Exch
    ; Pop $R0
FunctionEnd


Function func_33
  InitPluginsDir
    ; Call Initialize_____Plugins
    ; SetDetailsPrint lastused
  File $PLUGINSDIR\modern-wizard.bmp
FunctionEnd


Function func_37
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


Function func_47
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


Function func_57    ; Page 0, Pre
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
  IntCmp $0 0 label_113
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
label_113:
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
  nsDialogs::CreateControl STATIC 0x40000000|0x10000000|0x04000000|0x00000100 0x00000020 120u 10u 195u 28u $(LSTR_38)    ;  "Welcome to the $(LSTR_81) Setup Wizard" "ASIO Link Pro"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_38)    ;  "Welcome to the $(LSTR_81) Setup Wizard" "ASIO Link Pro"
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
  nsDialogs::CreateControl STATIC 0x40000000|0x10000000|0x04000000|0x00000100 0x00000020 120u 45u 195u 130u $(LSTR_40)    ;  "This wizard will guide you through the installation of $(LSTR_81).$\r$\n$\r$\nIt is recommended that you close all other applications before starting Setup. This will make it possible to update relevant system files without having to reboot your computer.$\r$\n$\r$\n$_CLICK" "ASIO Link Pro"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_40)    ;  "This wizard will guide you through the installation of $(LSTR_81).$\r$\n$\r$\nIt is recommended that you close all other applications before starting Setup. This will make it possible to update relevant system files without having to reboot your computer.$\r$\n$\r$\n$_CLICK" "ASIO Link Pro"
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
  Call func_37
  Call func_716
  nsDialogs::Show
    ; Call Initialize_____Plugins
    ; AllowSkipFiles on
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll Show
  Call func_47
  IntCmp $_18_ 0 label_172
  System::Call gdi32::DeleteObject(is) $_18_
    ; Call Initialize_____Plugins
    ; AllowSkipFiles off
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push $_18_
    ; Push gdi32::DeleteObject(is)
    ; CallInstDLL $PLUGINSDIR\System.dll Call
label_172:
FunctionEnd


Function func_173    ; Page 0, Leave
  Call func_813
FunctionEnd


Function func_175    ; Page 1, Pre
  SendMessage $_0_ ${WM_SETTEXT} 0 STR:$(LSTR_42)    ;  "License Agreement"
  SendMessage $_2_ ${WM_SETTEXT} 0 STR:$(LSTR_43)    ;  "Please review the license terms before installing $(LSTR_81)." "ASIO Link Pro"
FunctionEnd


Function func_178    ; Page 1, Show
  FindWindow $_22_ "#32770" "" $HWNDPARENT
  GetDlgItem $_23_ $_22_ 1040
  GetDlgItem $_24_ $_22_ 1006
  GetDlgItem $_25_ $_22_ 1000
  SendMessage $_23_ ${WM_SETTEXT} 0 STR:$(LSTR_44)    ;  "Press Page Down to see the rest of the agreement."
FunctionEnd


Function func_184    ; Page 1, Leave
FunctionEnd


Function func_185    ; Page 2, Pre
  SendMessage $_0_ ${WM_SETTEXT} 0 STR:$(LSTR_45)    ;  "Choose Install Location"
  SendMessage $_2_ ${WM_SETTEXT} 0 STR:$(LSTR_46)    ;  "Choose the folder in which to install $(LSTR_81)." "ASIO Link Pro"
FunctionEnd


Function func_188    ; Page 2, Show
  FindWindow $_26_ "#32770" "" $HWNDPARENT
  GetDlgItem $_27_ $_26_ 1006
  GetDlgItem $_28_ $_26_ 1020
  GetDlgItem $_29_ $_26_ 1019
  GetDlgItem $_30_ $_26_ 1001
  GetDlgItem $_31_ $_26_ 1023
  GetDlgItem $_32_ $_26_ 1024
FunctionEnd


Function func_196    ; Page 2, Leave
FunctionEnd


Function func_197    ; Page 3, Pre
  StrCmp $_12_ "" 0 label_202
  ReadRegStr $_37_ HKLM Software\ASIOLinkPro "Start Menu Folder"
  StrCmp $_37_ "" label_201
  StrCpy $_12_ $_37_
label_201:
  ClearErrors
label_202:
  SendMessage $_0_ ${WM_SETTEXT} 0 STR:$(LSTR_47)    ;  "Choose Start Menu Folder"
  SendMessage $_2_ ${WM_SETTEXT} 0 STR:$(LSTR_48)    ;  "Choose a Start Menu folder for the $(LSTR_81) shortcuts." "ASIO Link Pro"
  StrCmp $(LSTR_37) 0 0 label_219    ;  0
  StartMenu::Init /noicon /autoadd /text $(LSTR_50) /lastused $_12_ /checknoshortcuts $(LSTR_49) $(LSTR_2)    ;  "Select the Start Menu folder in which you would like to create the program's shortcuts. You can also enter a name to create a new folder." "Do not create shortcuts" "ASIO Link Pro"
    ; Call Initialize_____Plugins
    ; AllowSkipFiles on
    ; File $PLUGINSDIR\StartMenu.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_2)    ;  "ASIO Link Pro"
    ; Push $(LSTR_49)    ;  "Do not create shortcuts"
    ; Push /checknoshortcuts
    ; Push $_12_
    ; Push /lastused
    ; Push $(LSTR_50)    ;  "Select the Start Menu folder in which you would like to create the program's shortcuts. You can also enter a name to create a new folder."
    ; Push /text
    ; Push /autoadd
    ; Push /noicon
    ; CallInstDLL $PLUGINSDIR\StartMenu.dll Init
  Goto label_233
label_219:
  StartMenu::Init /rtl /noicon /autoadd /text $(LSTR_50) /lastused $_12_ /checknoshortcuts $(LSTR_49) $(LSTR_2)    ;  "Select the Start Menu folder in which you would like to create the program's shortcuts. You can also enter a name to create a new folder." "Do not create shortcuts" "ASIO Link Pro"
    ; Call Initialize_____Plugins
    ; AllowSkipFiles off
    ; File $PLUGINSDIR\StartMenu.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_2)    ;  "ASIO Link Pro"
    ; Push $(LSTR_49)    ;  "Do not create shortcuts"
    ; Push /checknoshortcuts
    ; Push $_12_
    ; Push /lastused
    ; Push $(LSTR_50)    ;  "Select the Start Menu folder in which you would like to create the program's shortcuts. You can also enter a name to create a new folder."
    ; Push /text
    ; Push /autoadd
    ; Push /noicon
    ; Push /rtl
    ; CallInstDLL $PLUGINSDIR\StartMenu.dll Init
label_233:
  Pop $_33_
  GetDlgItem $_34_ $_33_ 1002
  GetDlgItem $_35_ $_33_ 1004
  StartMenu::Show
    ; Call Initialize_____Plugins
    ; AllowSkipFiles on
    ; File $PLUGINSDIR\StartMenu.dll
    ; SetDetailsPrint lastused
    ; CallInstDLL $PLUGINSDIR\StartMenu.dll Show
  Pop $_36_
  StrCmp $_36_ success 0 label_243
  Pop $_12_
label_243:
FunctionEnd


Function func_244    ; Page 3, Leave
FunctionEnd


Function func_245    ; Page 4, Pre
  SendMessage $_0_ ${WM_SETTEXT} 0 STR:$(LSTR_51)    ;  Installing
  SendMessage $_2_ ${WM_SETTEXT} 0 STR:$(LSTR_52)    ;  "Please wait while $(LSTR_81) is being installed." "ASIO Link Pro"
FunctionEnd


Function func_248    ; Page 4, Show
  FindWindow $_38_ "#32770" "" $HWNDPARENT
  GetDlgItem $_39_ $_38_ 1006
  GetDlgItem $_40_ $_38_ 1004
  GetDlgItem $_41_ $_38_ 1027
  GetDlgItem $_42_ $_38_ 1016
FunctionEnd


Function func_254    ; Page 4, Leave
  IfAbort label_258
  SendMessage $_0_ ${WM_SETTEXT} 0 STR:$(LSTR_53)    ;  "Installation Complete"
  SendMessage $_2_ ${WM_SETTEXT} 0 STR:$(LSTR_54)    ;  "Setup was completed successfully."
  Goto label_260
label_258:
  SendMessage $_0_ ${WM_SETTEXT} 0 STR:$(LSTR_55)    ;  "Installation Aborted"
  SendMessage $_2_ ${WM_SETTEXT} 0 STR:$(LSTR_56)    ;  "Setup was not completed successfully."
label_260:
  IfAbort label_261
label_261:
FunctionEnd


Function func_262
  InitPluginsDir
    ; Call Initialize_____Plugins
    ; SetDetailsPrint lastused
  SetOverwrite on
  File $PLUGINSDIR\modern-wizard.bmp
  Call func_33
FunctionEnd


Function func_267    ; Page 6, Pre
  SendMessage $_9_ ${WM_SETTEXT} 0 STR:$(LSTR_57)    ;  &Finish
  nsDialogs::Create 1044
    ; Call Initialize_____Plugins
    ; SetOverwrite off
    ; AllowSkipFiles off
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push 1044
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll Create
  Pop $_43_
  nsDialogs::SetRTL $(LSTR_37)    ;  0
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_37)    ;  0
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll SetRTL
  SetCtlColors $_43_ "" 0xFFFFFF
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
  Pop $_44_
  Push $0
  Push $1
  Push $2
  Push $R0
  StrCpy $R0 $_44_
  StrCpy $1 ""
  StrCpy $2 ""
  System::Call "*(i, i, i, i) i.s"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push "*(i, i, i, i) i.s"
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  Pop $0
  IntCmp $0 0 label_324
  System::Call "user32::GetClientRect(iR0, ir0)"
    ; Call Initialize_____Plugins
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
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push $0
    ; CallInstDLL $PLUGINSDIR\System.dll Free
  Pop $1
  Pop $2
label_324:
  System::Call "user32::LoadImage(i0, ts, i 0, ir1, ir2, i0x0010) i.s" $PLUGINSDIR\modern-wizard.bmp
    ; Call Initialize_____Plugins
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
  Pop $_45_
  IfRebootFlag 0 label_405
  nsDialogs::CreateControl STATIC 0x40000000|0x10000000|0x04000000|0x00000100 0x00000020 120u 10u 195u 28u $(LSTR_58)    ;  "Completing the $(LSTR_81) Setup Wizard" "ASIO Link Pro"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_58)    ;  "Completing the $(LSTR_81) Setup Wizard" "ASIO Link Pro"
    ; Push 28u
    ; Push 195u
    ; Push 10u
    ; Push 120u
    ; Push 0x00000020
    ; Push 0x40000000|0x10000000|0x04000000|0x00000100
    ; Push STATIC
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll CreateControl
  Pop $_46_
  SetCtlColors $_46_ "" 0xFFFFFF
  CreateFont $_47_ $(LSTR_39) 12 700    ;  "MS Shell Dlg"
  SendMessage $_46_ ${WM_SETFONT} $_47_ 0
  nsDialogs::CreateControl STATIC 0x40000000|0x10000000|0x04000000|0x00000100 0x00000020 120u 45u 195u 40u $(LSTR_59)    ;  "Your computer must be restarted in order to complete the installation of $(LSTR_81). Do you want to reboot now?" "ASIO Link Pro"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_59)    ;  "Your computer must be restarted in order to complete the installation of $(LSTR_81). Do you want to reboot now?" "ASIO Link Pro"
    ; Push 40u
    ; Push 195u
    ; Push 45u
    ; Push 120u
    ; Push 0x00000020
    ; Push 0x40000000|0x10000000|0x04000000|0x00000100
    ; Push STATIC
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll CreateControl
  Pop $_48_
  SetCtlColors $_48_ "" 0xFFFFFF
  nsDialogs::CreateControl BUTTON 0x40000000|0x10000000|0x04000000|0x00010000|0x00000000|0x00000C00|0x00000009|0x00002000 0 120u 90u 195u 10u $(LSTR_60)    ;  "Reboot now"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_60)    ;  "Reboot now"
    ; Push 10u
    ; Push 195u
    ; Push 90u
    ; Push 120u
    ; Push 0
    ; Push 0x40000000|0x10000000|0x04000000|0x00010000|0x00000000|0x00000C00|0x00000009|0x00002000
    ; Push BUTTON
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll CreateControl
  Pop $_52_
  SetCtlColors $_52_ "" 0xFFFFFF
  nsDialogs::CreateControl BUTTON 0x40000000|0x10000000|0x04000000|0x00010000|0x00000000|0x00000C00|0x00000009|0x00002000 0 120u 115u 195u 10u $(LSTR_61)    ;  "I want to manually reboot later"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_61)    ;  "I want to manually reboot later"
    ; Push 10u
    ; Push 195u
    ; Push 115u
    ; Push 120u
    ; Push 0
    ; Push 0x40000000|0x10000000|0x04000000|0x00010000|0x00000000|0x00000C00|0x00000009|0x00002000
    ; Push BUTTON
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll CreateControl
  Pop $_53_
  SetCtlColors $_53_ "" 0xFFFFFF
  SendMessage $_52_ 0x00F1 1 0
  System::Call user32::SetFocus(i$_52_)
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push user32::SetFocus(i$_52_)
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  Goto label_469
label_405:
  nsDialogs::CreateControl STATIC 0x40000000|0x10000000|0x04000000|0x00000100 0x00000020 120u 10u 195u 28u $(LSTR_58)    ;  "Completing the $(LSTR_81) Setup Wizard" "ASIO Link Pro"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_58)    ;  "Completing the $(LSTR_81) Setup Wizard" "ASIO Link Pro"
    ; Push 28u
    ; Push 195u
    ; Push 10u
    ; Push 120u
    ; Push 0x00000020
    ; Push 0x40000000|0x10000000|0x04000000|0x00000100
    ; Push STATIC
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll CreateControl
  Pop $_46_
  SetCtlColors $_46_ "" 0xFFFFFF
  CreateFont $_47_ $(LSTR_39) 12 700    ;  "MS Shell Dlg"
  SendMessage $_46_ ${WM_SETFONT} $_47_ 0
  nsDialogs::CreateControl STATIC 0x40000000|0x10000000|0x04000000|0x00000100 0x00000020 120u 45u 195u 40u $(LSTR_62)    ;  "$(LSTR_81) has been installed on your computer.$\r$\n$\r$\nClick Finish to close this wizard." "ASIO Link Pro"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_62)    ;  "$(LSTR_81) has been installed on your computer.$\r$\n$\r$\nClick Finish to close this wizard." "ASIO Link Pro"
    ; Push 40u
    ; Push 195u
    ; Push 45u
    ; Push 120u
    ; Push 0x00000020
    ; Push 0x40000000|0x10000000|0x04000000|0x00000100
    ; Push STATIC
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll CreateControl
  Pop $_48_
  SetCtlColors $_48_ "" 0xFFFFFF
  nsDialogs::CreateControl BUTTON 0x40000000|0x10000000|0x04000000|0x00010000|0x00000000|0x00000C00|0x00000003|0x00002000 0 120u 90u 195u 10u "Run ASIO Link Pro Tool"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push "Run ASIO Link Pro Tool"
    ; Push 10u
    ; Push 195u
    ; Push 90u
    ; Push 120u
    ; Push 0
    ; Push 0x40000000|0x10000000|0x04000000|0x00010000|0x00000000|0x00000C00|0x00000003|0x00002000
    ; Push BUTTON
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll CreateControl
  Pop $_50_
  SetCtlColors $_50_ "" 0xFFFFFF
  SendMessage $_50_ 0x00F1 1 0
  System::Call user32::SetFocus(i$_50_)
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push user32::SetFocus(i$_50_)
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  nsDialogs::CreateControl BUTTON 0x40000000|0x10000000|0x04000000|0x00010000|0x00000000|0x00000C00|0x00000003|0x00002000 0 120u 110u 195u 10u "Read Pdf Documentation"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push "Read Pdf Documentation"
    ; Push 10u
    ; Push 195u
    ; Push 110u
    ; Push 120u
    ; Push 0
    ; Push 0x40000000|0x10000000|0x04000000|0x00010000|0x00000000|0x00000C00|0x00000003|0x00002000
    ; Push BUTTON
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll CreateControl
  Pop $_51_
  SetCtlColors $_51_ "" 0xFFFFFF
label_469:
  Call func_37
  nsDialogs::Show
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll Show
  Call func_47
  IntCmp $_45_ 0 label_482
  System::Call gdi32::DeleteObject(is) $_45_
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push $_45_
    ; Push gdi32::DeleteObject(is)
    ; CallInstDLL $PLUGINSDIR\System.dll Call
label_482:
FunctionEnd


Function func_483    ; Page 6, Leave
  IfRebootFlag 0 label_490
  SendMessage $_52_ 0x00F0 0 0 $_49_
  IntCmp $_49_ 1 0 label_489 label_489
  Reboot
    ; Quit
  Goto label_490
label_489:
  Return

label_490:
  SendMessage $_50_ 0x00F0 0 0 $_49_
  IntCmp $_49_ 1 0 label_493 label_493
  Call func_700
label_493:
  SendMessage $_51_ 0x00F0 0 0 $_49_
  IntCmp $_49_ 1 0 label_496 label_496
  Call func_698
label_496:
FunctionEnd


Function .onGUIInit
  GetDlgItem $_0_ $HWNDPARENT 1037
  CreateFont $_1_ $(LSTR_39) $(LSTR_63) 700    ;  "MS Shell Dlg" 8
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
  Call func_262
FunctionEnd


Function .onUserAbort
  MessageBox MB_YESNO|MB_ICONEXCLAMATION $(LSTR_64) IDYES label_525    ;  "Are you sure you want to quit $(LSTR_2) Setup?" "ASIO Link Pro"
  Abort
label_525:
FunctionEnd


Function .onInit
  SetShellVarContext all
  ReadRegStr $R0 HKLM Software\Microsoft\Windows\CurrentVersion\Uninstall\ASIOLinkPro UninstallString
  StrCmp $R0 "" label_535
  MessageBox MB_YESNO|MB_ICONQUESTION "ASIO Link Pro is already installed. Upgrade the existing version?" IDYES label_531
  Quit
label_531:
  ExecWait "$R0 /S _?=$INSTDIR" $0
  StrCmp $0 0 label_535
  MessageBox MB_OK "Uninstalling ASIO Link Pro failed"
  Quit
label_535:
FunctionEnd


Section "ASIO Link Pro (required)" ; Section_0
  ; AddSize 8890
  SectionIn 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 RO
  SetShellVarContext all
  SetOutPath $SYSDIR\drivers
  SetOverwrite off
  File asiovadpro.dat
  AccessControl::GrantOnFile $SYSDIR\drivers\asiovadpro.dat (S-1-5-32-545) FullAccess
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\AccessControl.dll
    ; SetDetailsPrint lastused
    ; Push FullAccess
    ; Push (S-1-5-32-545)
    ; Push $SYSDIR\drivers\asiovadpro.dat
    ; CallInstDLL $PLUGINSDIR\AccessControl.dll GrantOnFile
  StrCpy $R4 0
  Call func_731
  IfErrors label_549 label_550
label_549:
  StrCpy $R4 1
label_550:
  System::Call kernel32::GetCurrentProcess()i.s
    ; Call Initialize_____Plugins
    ; AllowSkipFiles off
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
  StrCmp $_54_ 0 label_586
  SetOutPath $INSTDIR\x64
  SetOverwrite on
  AllowSkipFiles on
  File asiolink.dll
  File asiolinktool.exe
  File installer.exe
  File difxapi.dll
  StrCmp $R4 0 0 label_575
  File asiovadpro.cat
  File asiovadpro.sys
  IntCmp $_15_ 0 label_573
  File asiovadpro.inf
  Goto label_574
label_573:
  File asiovadpro.inf
label_574:
  Goto label_581
label_575:
  File asiovadpro.cat
  File asiovadpro.sys
  IntCmp $_15_ 0 label_580
  File asiovadpro.inf
  Goto label_581
label_580:
  File asiovadpro.inf
label_581:
  SetOutPath $INSTDIR
  File asiolink.dll
  File asiolinktool.exe
  File "ASIO Link Technology.pdf"
  Goto label_606
label_586:
  SetOutPath $INSTDIR
  File asiolink.dll
  File asiolinktool.exe
  File "ASIO Link Technology.pdf"
  File installer.exe
  File difxapi.dll
  StrCmp $R4 0 0 label_600
  File asiovadpro.cat
  File asiovadpro.sys
  IntCmp $_15_ 0 label_598
  File asiovadpro.inf
  Goto label_599
label_598:
  File asiovadpro.inf
label_599:
  Goto label_606
label_600:
  File asiovadpro.cat
  File asiovadpro.sys
  IntCmp $_15_ 0 label_605
  File asiovadpro.inf
  Goto label_606
label_605:
  File asiovadpro.inf
label_606:
  Call func_764
  System::Call kernel32::GetCurrentProcess()i.s
    ; Call Initialize_____Plugins
    ; SetOverwrite off
    ; AllowSkipFiles off
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
  StrCmp $_54_ 0 label_623
  ExecWait "regsvr32.exe /s $\"$INSTDIR\x64\asiolink.dll$\"" $0
  StrCmp $0 0 label_623
  MessageBox MB_OK "There was a problem registering the ASIO Link Pro"
  Abort "There was a problem registering the ASIO Link Pro"
label_623:
  ExecWait "regsvr32.exe /s $\"$INSTDIR\asiolink.dll$\"" $0
  StrCmp $0 0 label_627
  MessageBox MB_OK "There was a problem registering the ASIO Link Pro (32)"
  Abort "There was a problem registering the ASIO Link Pro (32)"
label_627:
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
  StrCmp $_54_ 0 label_646
  SetOutPath $INSTDIR\x64
  nsExec::ExecToLog "$\"$INSTDIR\x64\installer.exe$\" install"
    ; Call Initialize_____Plugins
    ; AllowSkipFiles on
    ; File $PLUGINSDIR\nsExec.dll
    ; SetDetailsPrint lastused
    ; Push "$\"$INSTDIR\x64\installer.exe$\" install"
    ; CallInstDLL $PLUGINSDIR\nsExec.dll ExecToLog
  Goto label_652
label_646:
  SetOutPath $INSTDIR
  nsExec::ExecToLog "$\"$INSTDIR\installer.exe$\" install"
    ; Call Initialize_____Plugins
    ; AllowSkipFiles off
    ; File $PLUGINSDIR\nsExec.dll
    ; SetDetailsPrint lastused
    ; Push "$\"$INSTDIR\installer.exe$\" install"
    ; CallInstDLL $PLUGINSDIR\nsExec.dll ExecToLog
label_652:
  Pop $0
  IntCmp $0 3 0 label_655 label_655
  MessageBox MB_OK "The ASIO Link Pro is already installed, continuing anyway.."
label_655:
  IntCmp $0 2 0 label_657 label_657
  MessageBox MB_OK "A reboot is required to complete the install"
label_657:
  IntCmp $0 1 0 label_660 label_660
  MessageBox MB_OK "There was a problem installing the ASIO Link Pro"
  Abort "There was a problem installing the ASIO Link Pro"
label_660:
  WriteRegStr HKLM SOFTWARE\ASIOLinkPro Install_Dir $INSTDIR
  WriteRegStr HKLM Software\Microsoft\Windows\CurrentVersion\Uninstall\ASIOLinkPro DisplayName "ASIO Link Pro"
  WriteRegStr HKLM Software\Microsoft\Windows\CurrentVersion\Uninstall\ASIOLinkPro UninstallString $\"$INSTDIR\uninstall.exe$\"
  WriteRegStr HKLM Software\Microsoft\Windows\CurrentVersion\Uninstall\ASIOLinkPro DisplayIcon $\"$INSTDIR\uninstall.exe$\"
  WriteRegStr HKLM Software\Microsoft\Windows\CurrentVersion\Uninstall\ASIOLinkPro Publisher "O Deus Audio"
  WriteRegDWORD HKLM Software\Microsoft\Windows\CurrentVersion\Uninstall\ASIOLinkPro NoModify 1
  WriteRegDWORD HKLM Software\Microsoft\Windows\CurrentVersion\Uninstall\ASIOLinkPro NoRepair 1
  SetOutPath $INSTDIR
  SetOverwrite on
  AllowSkipFiles on
  File uninstall.exe
  StrCpy $_36_ $_12_ 1
  StrCmp $_36_ > label_697
  StrCmp $_12_ "" 0 label_677
  ReadRegStr $_37_ HKLM Software\ASIOLinkPro "Start Menu Folder"
  StrCmp $_37_ "" label_676
  StrCpy $_12_ $_37_
  Goto label_677
label_676:
  StrCpy $_12_ $(LSTR_2)    ;  "ASIO Link Pro"
label_677:
  CreateDirectory $SMPROGRAMS\$_12_
  CreateShortCut "$SMPROGRAMS\$_12_\ASIO Link Technology.pdf.lnk" "$INSTDIR\ASIO Link Technology.pdf" "" "$INSTDIR\ASIO Link Technology.pdf"
  CreateShortCut $SMPROGRAMS\$_12_\Uninstall.lnk $INSTDIR\uninstall.exe "" $INSTDIR\uninstall.exe
  System::Call kernel32::GetCurrentProcess()i.s
    ; Call Initialize_____Plugins
    ; SetOverwrite off
    ; AllowSkipFiles off
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
  StrCmp $_54_ 0 label_695
  CreateShortCut "$SMPROGRAMS\$_12_\ASIO Link Pro Tool.lnk" $INSTDIR\x64\AsioLinkTool.exe "" $INSTDIR\x64\AsioLinkTool.exe
  CreateShortCut "$SMPROGRAMS\$_12_\ASIO Link Pro Tool 32.lnk" $INSTDIR\AsioLinkTool.exe "" $INSTDIR\AsioLinkTool.exe
  Goto label_696
label_695:
  CreateShortCut "$SMPROGRAMS\$_12_\ASIO Link Pro Tool.lnk" $INSTDIR\AsioLinkTool.exe "" $INSTDIR\AsioLinkTool.exe
label_696:
  WriteRegStr HKLM Software\ASIOLinkPro "Start Menu Folder" $_12_
label_697:
SectionEnd


Function func_698
  ExecShell "" "$SMPROGRAMS\$_12_\ASIO Link Technology.pdf.lnk"    ; " $SMPROGRAMS\$_12_\ASIO Link Technology.pdf.lnk"
FunctionEnd


Function func_700
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
  StrCmp $_54_ 0 label_714
  ExecShell "" $INSTDIR\x64\AsioLinkTool.exe    ; " $INSTDIR\x64\AsioLinkTool.exe"
  Goto label_715
label_714:
  ExecShell "" $INSTDIR\AsioLinkTool.exe    ; " $INSTDIR\AsioLinkTool.exe"
label_715:
FunctionEnd


Function func_716
  nsDialogs::CreateControl BUTTON 0x40000000|0x10000000|0x04000000|0x00010000|0x00000000|0x00000C00|0x00000003|0x00002000 0 120u -18u 50% 12u "Install 16 stereo WDM devices"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push "Install 16 stereo WDM devices"
    ; Push 12u
    ; Push 50%
    ; Push -18u
    ; Push 120u
    ; Push 0
    ; Push 0x40000000|0x10000000|0x04000000|0x00010000|0x00000000|0x00000C00|0x00000003|0x00002000
    ; Push BUTTON
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll CreateControl
  Pop $_14_
  SetCtlColors $_14_ "" 0xFFFFFF
FunctionEnd


Function func_731
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
  StrCmp $_54_ 0 label_744
  SetRegView 64
label_744:
  ReadRegDWORD $0 HKLM "SOFTWARE\Microsoft\Windows NT\CurrentVersion" CurrentMajorVersionNumber
  ReadRegDWORD $1 HKLM SOFTWARE\ODeusAudio InstallNewDrivers
  ReadRegStr $2 HKLM "SOFTWARE\Microsoft\Windows NT\CurrentVersion" ProductName
  SetRegView 32
  Push $2
  Push 10
  Call func_0
  Pop $3
  StrCpy $2 $3 2
  StrCmp $0 10 0 label_755
  Goto label_756
label_755:
  StrCmp $2 10 0 label_762
label_756:
  StrCmp $1 1 0 label_760
  MessageBox MB_OK "INSTALLING NEW DRIVER IN WIN10"
  ClearErrors
  Return

label_760:
  SetErrors
  Return

label_762:
  ClearErrors
FunctionEnd


Function func_764
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
  StrCmp $_54_ 0 label_777
  SetRegView 64
label_777:
  StrCpy $0 0
label_778:
  ClearErrors
  EnumRegValue $1 HKLM SOFTWARE\ODeusAudio\ASIOLinkPro $0
  IfErrors label_783
  IntOp $0 $0 + 1
  StrCmp $1 NumDevices label_811 label_778
label_783:
  WriteRegDWORD HKLM SOFTWARE\ODeusAudio\ASIOLinkPro NumDevices 4
  WriteRegDWORD HKLM SOFTWARE\ODeusAudio\ASIOLinkPro NumChannels 8
  AccessControl::GrantOnRegKey HKLM SOFTWARE\ODeusAudio\ASIOLinkPro (S-1-5-32-545) FullAccess
    ; Call Initialize_____Plugins
    ; AllowSkipFiles on
    ; File $PLUGINSDIR\AccessControl.dll
    ; SetDetailsPrint lastused
    ; Push FullAccess
    ; Push (S-1-5-32-545)
    ; Push SOFTWARE\ODeusAudio\ASIOLinkPro
    ; Push HKLM
    ; CallInstDLL $PLUGINSDIR\AccessControl.dll GrantOnRegKey
  System::Call kernel32::GetCurrentProcess()i.s
    ; Call Initialize_____Plugins
    ; AllowSkipFiles off
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
  StrCmp $_54_ 0 label_806
  Goto label_811
label_806:
  nsExec::ExecToLog "$\"reg.exe$\" FLAGS HKLM\SOFTWARE\ODeusAudio\ASIOLinkPro  SET DONT_VIRTUALIZE /s"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsExec.dll
    ; SetDetailsPrint lastused
    ; Push "$\"reg.exe$\" FLAGS HKLM\SOFTWARE\ODeusAudio\ASIOLinkPro  SET DONT_VIRTUALIZE /s"
    ; CallInstDLL $PLUGINSDIR\nsExec.dll ExecToLog
label_811:
  SetRegView 32
FunctionEnd


Function func_813
  Call func_764
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
  StrCmp $_54_ 0 label_827
  SetRegView 64
label_827:
  SendMessage $_14_ 0x00F0 0 0 $0
  StrCpy $_15_ $0
  IntCmp $0 0 label_833
  WriteRegDWORD HKLM SOFTWARE\ODeusAudio\ASIOLinkPro NumDevices 16
  WriteRegDWORD HKLM SOFTWARE\ODeusAudio\ASIOLinkPro NumChannels 2
  Goto label_835
label_833:
  WriteRegDWORD HKLM SOFTWARE\ODeusAudio\ASIOLinkPro NumDevices 4
  WriteRegDWORD HKLM SOFTWARE\ODeusAudio\ASIOLinkPro NumChannels 8
label_835:
  SetRegView 32
FunctionEnd


/*
Function Initialize_____Plugins
  SetDetailsPrint none
  StrCmp $PLUGINSDIR "" 0 label_847
  Push $0
  SetErrors
  GetTempFileName $0
  Delete $0
  CreateDirectory $0
  IfErrors label_848
  StrCpy $PLUGINSDIR $0
  Pop $0
label_847:
  Return

label_848:
  MessageBox MB_OK|MB_ICONSTOP "Error! Can't initialize plug-ins directory. Please try again later." /SD IDOK
  Quit
FunctionEnd
*/



; --------------------
; UNREFERENCED STRINGS:

/*
34 $PROGRAMFILES
38 CommonFilesDir
53 "$PROGRAMFILES\Common Files"
70 $COMMONFILES
*/
