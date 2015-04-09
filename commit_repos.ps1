 #This file moves to my GitHub directory and updates all of my repositories. It is executed 
 
 $date = Get-Date
 
 cd "C:\Users\Damo\Documents\GitHub"
 
 Get-ChildItem | ?{ $_.PSIsContainer } |  ForEach-Object {
    cd $_.FullName

    git add --all .
    git commit -m "$_.Name $date"
    git push
    }

Write-Host "Task Completed"