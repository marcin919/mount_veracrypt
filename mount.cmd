:: VeraCrypt Mount


set TRUECRYPT=VeraCryptPortable.exe
set CONTAINER=[Container-JR1.5G].vc
set LETTER=S:
if not exist "%TRUECRYPT%" (
  echo "%TRUECRYPT%" doesn't exist
  pause
)else if exist %LETTER% (
  echo %LETTER% is already in use
  pause
) else if not exist "%CONTAINER%" (
  echo "%CONTAINER%" doesn't exist
  pause
) else if exist "%CONTAINER%" (
 REM "%TRUECRYPT%" "%CONTAINER%" /l %LETTER% /a /q
"%TRUECRYPT%"  /v "%CONTAINER%" /l %LETTER% /a  /e /b
)
