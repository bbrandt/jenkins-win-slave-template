pushd %~dp0

set startupPath=%~dp0startup.cmd

nssm install JenkinsSlave "%startupPath%"

ping 127.0.0.1 -n 7 > nul

nssm start JenkinsSlave
pause

