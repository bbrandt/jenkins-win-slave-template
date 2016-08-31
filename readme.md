# Jenkins Slave Windows Template

## Alternatives
* The Jenkins [Java Web Start](https://wiki.jenkins-ci.org/display/JENKINS/Installing+Jenkins+as+a+Windows+service#InstallingJenkinsasaWindowsservice-InstallSlaveasaWindowsservice%28require.NET2.0framework%29) is able to install itself as a service, which is the preferred method of hosting the Jenkins slave.  

## Prereqs
* Server JVM installed on desired slave node
** add to path
** set JAVA_HOME

## How to use
* Clone this repo and/or copy to the desired slave node folder
* From {jenkins-host}/computer click `New Node`
* Give your slave a name, 
** choose Dumb Slave, 
** and click OK
* For Launch method choose "Launch slave agents via Java Web Start", 
** fill in the rest of the node info as desired,
** and click Save
* Click on the newly created node
* Modify startup.cmd with values found on this page
* Run _install.cmd as administrator
