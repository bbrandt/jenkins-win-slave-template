pushd %~dp0

SET INSTALL_PATH=C:\j
SET JENKINS_SERVER=insert Jenkins base URL here. Ex: http://myjenkinsservername
SET SLAVE_NAME=insert name of slave here. Ex: MY-COMPUTER-NAME
SET SECRET=insert secret here

SET JNLPURL=%JENKINS_SERVER%/computer/%SLAVE_NAME%/slave-agent.jnlp

@powershell -NoProfile -ExecutionPolicy unrestricted -Command "$ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest '%JENKINS_SERVER%/jnlpJars/slave.jar' -OutFile '%INSTALL_PATH%\slave.jar'"

java -jar %INSTALL_PATH%\slave.jar -jnlpUrl %JNLPURL% -secret %SECRET%