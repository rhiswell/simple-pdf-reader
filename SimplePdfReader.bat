SET FILE_PATH=%~1

SET PYTHON_BIN=%SYSTEMDRIVE%\Program Files\Python39\python.exe
SET EDGE_BIN=%SYSTEMDRIVE%\Program Files (x86)\Microsoft\Edge Beta\Application\msedge.exe
REM SET PS_BIN=powershell

REM DONE: Use PowerShell (with .NET) to both convert file path to URL and fire Microsoft Edge
REM %PS_BIN% -command "$file_url = ([System.Uri]'%FILE_PATH%').AbsoluteUri; & '%EDGE_BIN%' --app=$file_url"

REM DONE: Use Python to both convert file path to URL and fire Microsoft Edge 
"%PYTHON_BIN%" -c  "import pathlib, subprocess; file_url = pathlib.Path(r'%FILE_PATH%').as_uri(); subprocess.Popen(['%EDGE_BIN%', '--app={}'.format(file_url)])"

REM For debug only
REM PAUSE