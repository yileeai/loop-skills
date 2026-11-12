@echo off
setlocal
if "%~1"=="" (
  echo Usage: install.bat "D:\path\to\your\Obsidian vault"
  exit /b 1
)
set "VAULT=%~1"
if not exist "%VAULT%" mkdir "%VAULT%"
rem 1) vault skeleton: only add missing files, never overwrite existing ones
robocopy "%~dp0vault-template" "%VAULT%" /E /XC /XN /XO /NFL /NDL /NJH /NJS >nul
rem 2) skills: _claude-skills = install package, .claude\skills = read by Claude Code
robocopy "%~dp0skills" "%VAULT%\_claude-skills" /E /NFL /NDL /NJH /NJS >nul
robocopy "%~dp0skills" "%VAULT%\.claude\skills" /E /NFL /NDL /NJH /NJS >nul
echo.
echo Done: 9 skills installed to %VAULT%
echo Next: edit CLAUDE.md and 20-Wiki\...\knowledge blueprint (see README).
endlocal
exit /b 0
