 # Author: Damien Beard, @DamienBAus
 #
 # This file moves to my GitHub directory and updates all of my repositories. 
 # It is executed by an Scheduled Task using the following command:
 #
 # Powershell.exe -File C:\Users\$name\Documents\GitHub\GitHub-Automation-with-PowerShell\commit_repos.ps1
 #
 # Where $name is the name of the user running the script. Don't forget to change variables below to your
 # repository location/GitHub username!
 
 $date = Get-Date
 $name = [Environment]::UserName
 $gitHubUserName = "DamienBAus" # Change this line to match your GitHub Username #

 cd "C:\Users\$name\Documents\GitHub" # Change this line to match your GitHub repository location #
 
 Get-ChildItem | ?{ $_.PSIsContainer } |  ForEach-Object {
    cd $_.FullName

    git remote set-url origin ssh://git@github.com/$gitHubUserName/$_.git
    git add --all .
    git commit -m "$_.Name $date"
    git push
    }
