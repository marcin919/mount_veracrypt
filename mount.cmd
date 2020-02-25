:: VeraCrypt Mouting Script

set EXE=VeraCryptPortable.exe
set CONTAINER=Container.vc
set LETTER=S:

if not exist "%EXE%" (
	echo "%EXE%" doesn't exist
  pause
)else if exist %LETTER% (
	echo %LETTER% is already in use
  pause
) else if not exist "%CONTAINER%" (
	echo "%CONTAINER%" doesn't exist
  pause
) else if exist "%CONTAINER%" (
"%EXE%"  /v "%CONTAINER%" /l %LETTER% /a  /e /b
)
