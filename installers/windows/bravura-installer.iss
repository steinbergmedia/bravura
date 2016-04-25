; Inno Setup script for Bravura and Bravura Text
; http://www.jrsoftware.org/isinfo.php

; This script requires the Inno Setup Preprocessor (ISPP) to be installed.
; Without ISPP installed, these #define statements will not compile.
#define MyAppName "Bravura Font Family"
#define MyAppVersion "1.204"
#define MyAppPublisher "Steinberg Media Technologies GmbH"
#define MyAppURL "http://www.steinberg.net/"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{B8D22191-0E50-477B-9508-76D45CED9DB6}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={cf}/SMuFL/Fonts/Bravura
DisableDirPage=yes
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=Z:\git\bravura\redist\OFL.txt
OutputBaseFilename=InstallBravura-{#MyAppVersion}
Compression=lzma
SolidCompression=yes
UsePreviousAppDir=no
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "..\..\redist\bravura_metadata.json"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\redist\bravura-text.md"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\redist\FONTLOG.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\redist\OFL.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\redist\OFL-FAQ.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\redist\otf\Bravura.otf"; DestDir: "{fonts}"; FontInstall: "Bravura"; Flags: uninsneveruninstall fontisnttruetype
Source: "..\..\redist\otf\BravuraText.otf"; DestDir: "{fonts}"; FontInstall: "Bravura Text"; Flags: uninsneveruninstall fontisnttruetype            
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

