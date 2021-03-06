
#define MyAppName "JUDO"
#define MyAppVersion "1.3.1"
#define MyAppPublisher "Tom Dunn"
#define MyAppURL "http://judo.sourceforge.net"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{DEADBEEF-4D77-4CAA-BE67-F537D5FB4CBB}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName=C:\Program Files (x86)\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputDir=C:\code\judo\installer
OutputBaseFilename=judo-{#MyAppVersion}
Compression=lzma
SolidCompression=yes
SetupIconFile=C:\code\judo\src\JUDO.ico

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"
Name: "si"; MessagesFile: "C:\code\judo\installer\Slovenian.isl"
Name: "es"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "fr"; MessagesFile: "compiler:Languages\French.isl"
Name: "id"; MessagesFile: "C:\code\judo\installer\Indonesian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\code\judo\src\*"; Excludes: "MyJUDOPrograms"; DestDir: "{app}"; Flags: recursesubdirs
Source: "C:\code\judo\properties\judo.en.properties"; DestName: "judo.properties"; DestDir: "{app}"; Languages: en
Source: "C:\code\judo\properties\judo.si.properties"; DestName: "judo.properties"; DestDir: "{app}"; Languages: si
Source: "C:\code\judo\properties\judo.es.properties"; DestName: "judo.properties"; DestDir: "{app}"; Languages: es
Source: "C:\code\judo\properties\judo.fr.properties"; DestName: "judo.properties"; DestDir: "{app}"; Languages: fr
Source: "C:\code\judo\properties\judo.id.properties"; DestName: "judo.properties"; DestDir: "{app}"; Languages: id
Source: "C:\code\judo\src\README.txt"; DestName: "README.txt"; DestDir: "{app}"; Flags: isreadme
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\jdk1.3\bin\javaw.exe"; WorkingDir: "{app}"; Parameters: "-cp . org.judo.JUDOIDE"; IconFilename: {app}\JUDO.ico;
Name: "{group}\{#MyAppName} website"; Filename: "http://judo.sourceforge.net/";
Name: "{group}\Share a program"; Filename: "http://judo.sourceforge.net/programs/";
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\jdk1.3\bin\javaw.exe"; WorkingDir: "{app}"; Parameters: "-cp . org.judo.JUDOIDE"; IconFilename: {app}\JUDO.ico; Tasks: desktopicon

[Run]
Filename: "{app}\jdk1.3\bin\javaw.exe"; WorkingDir: "{app}"; Parameters: "-cp . org.judo.JUDOIDE"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, "&", "&&")}}"; Flags: nowait postinstall skipifsilent

