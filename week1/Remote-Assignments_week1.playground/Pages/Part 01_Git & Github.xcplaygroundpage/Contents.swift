import Foundation

//: # Part 01_Git & Github
//:----
/*:
    1. Please create a public GitHub repository named “Remote-Assignments” for uploading your homework. Please send your repository link to us through Discord direct message and we will check your assignments through your repository every week. We need you to structure your folders as below:
    
    Ans:
 
        https://github.com/HRayChang/Remote-Assignments.git
 */

//:----
/*:
    2. Here are some Git and GitHub commands we usually use in software development. Please explain the meanings and use cases of them.
 
    Ans:
 
        ● git status: Displays the state of the working directory and the staging area.
        ● git add: Start tracking the chosen file and stage this change.
        ● git reset: Roll back the version, and you can specify the version to roll back to a certain commit.
        ● git commit: Open a default text editor, that allows to specify the commit message.
        ● git log: Lists the commit history of the repository in reverse chronological order
        ● git branch: Create a new branch in git.
        ● git merge: Combine to branch into one branch.
        ● git push [ repo_name ] [ branch_name ]: Upload the local branch version to the remote and merge it.
        ● git remote: View the remote repository you have set.
        ● fork: Take the entire copy of the repo, and replicate it in your own personal user space.
 */

//:----
/*:
    3. Please describe how to establish a GitHub repo and how to upload the local projects to GitHub. Try to explain your answers with as much detail as possible.
 
    Ans:
 
        Step00: Create New repository on Github.
        Step01: Create new project on Xcode.
        Step02: Open Terminal.
                cd [folder] (Get in project diectory.)
        Step03: git init (Initialize a git repository locally.)
        Step04: git remote add origin [repository address]
                git remote -v (Check successfully connected to the remote.)
        Step05: git pull origin main (Pull all of the file from the remote.)
                git status (Show the state of the working directory.)
        Step06: git add . (Add all of the untracked files into a commit and send it to Github.)
                git status (Check changes to be committed.)
        Step07: git commit -m "[describtion]" (Wrap all the changes up and specify a describtion.)
        Step08: git push origin main (Push onto the Github.)
 */

//:----
//: ## [Next: Part 02_Basic](@next)
