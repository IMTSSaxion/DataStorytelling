@REM  Get the process location
SET mypath=%~dp0
echo %mypath:~0,-1%

@REM Read first parameter which is a source
set src=%1
@REM Read second parameter which is the location where to output built Project
set dest=%2

@REM Read second parameter which is the location where to output built Project
set platform=%3

echo  %arg1% %arg2% %platform%

@REM All a UAT tool provided by Unreal which builds a Win64 Project
@REM And output its at the destination
@REM runUAT BuildCookRun -project="%mypath:~0,-1%/%src%" -platform=%platform% -clientconfig=DebugGame -build -cook -stage -archive -archivedirectory="%mypath:~0,-1%/%dest%" -notools

@REM runUAT -ScriptsForProject="%mypath:~0,-1%/%src%" Turnkey -command=VerifySdk -platform=Android -UpdateIfNeeded -EditorIO -EditorIOPort=60058  -project="%mypath:~0,-1%/%src%" BuildCookRun -nop4 -utf8output -nocompileeditor -skipbuildeditor -cook  -project="%mypath:~0,-1%/%src%" -target=UnrealProject  -unrealexe="D:\Games\UE_5.1\Engine\Bin
@REM aries\Win64\UnrealEditor-Cmd.exe" -platform=Android  -cookflavor=Multi -installed -stage -archive -package -build -pak -iostore -compressed -prereqs -archivedirectory="D:/Documents/Repos/DataStorytelling/UnrealProject/Build" -clientconfig=Development" 

runUAT -notools -ScriptsForProject="%mypath:~0,-1%/%src%" Turnkey -command=VerifySdk -platform=Android -UpdateIfNeeded -EditorIO -EditorIOPort=60058  -project="%mypath:~0,-1%/%src%" BuildCookRun -nop4 -utf8output -nocompileeditor -skipbuildeditor -cook  -project="%mypath:~0,-1%/%src%" -target=UnrealProject  -cookflavor=Multi -installed -stage -archive -package -build -pak -iostore -compressed -prereqs -archivedirectory="%mypath:~0,-1%/%dest%" 