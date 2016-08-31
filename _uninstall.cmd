pushd %~dp0

nssm stop JenkinsSlave

ping 127.0.0.1 -n 3 > nul

nssm remove JenkinsSlave confirm


pause

