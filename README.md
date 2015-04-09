# GitHub-Automation-with-PowerShell
Automating Git commits and backups with powershell

This is a script to add, commit and push your GitHub repositories to your GitHub profile. On its own, it's still pretty great, but if you set it up as a scheduled task, it means that you can have a daily backup without thinkng about it- awesome right! It's also set-up to connect using SSH, so no need to put any passwords in there.

This script assumes the following about your environment: 
* You have GitHub installed on your computer, and it is connected to your repositories.
* You have Git for Windows installed, and it's in your working PATH (if not, go here: http://git-scm.com/download/win ), and make sure you choose the option to put Git in your working PATH
* You have Git for PowerShell set up - http://git-scm.com/book/en/v2/Git-in-Other-Environments-Git-in-Powershell

The environment can be a bit fiddly to set-up, but once it's there, it really works. 

Also, you will have to tweak the paramters in the script for your setup (ie location of GitHub repository and GitHub Username).
