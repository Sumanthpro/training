# Git [Global Information Tracker]

- git is an open source free tool useful for devlopers to perform certain actions

## Commands in git

> git init - creates a .git hidden file which is useful to track by git

> git add . -- used to add all files into the git

> git add file_name -- used to add a particular file into the git

> git add src/file_path

> git add file_name1 file_name2 file_name3 --- to add multiple files at a time into git

> git commit -m "new entry" -- to commit and push into git this command is used
> git log -p is used to patch means can able to see the changes made in the code

> git reset will reset the saved changes

> git branch branch_name --- To create new branch
> git branch -D branch_name -- to delete a branch

> git checkout -- to shift into a branch

> how to merge two branches in online is first push a commit to online then create pr (pull request) push feature to dev then add the description then add reviewers in them to be check the code

> git pull --- to pull the changed code

> git stash --- saves the code

> git stash apply ---

> git stash drop ---

> git stash apply stash-name ----

> The the difference between github and git is github is a storage space to store our projects or source codes while git is a software tool used to work with out projects.

- git Rebase - combines commits together , can also delete the commits and revert will change the commit msg.(squash,delete,revert)

- the point of doing rebase is to keep the commit in straight line
  i.e(to maintain the hsitroy in the straight line)

                    🔴
                     |
                    🔴
                     |
                    🔴           rebase make like this a straight line
                     |
                    🔴
                     |
                    🔴

using binary search i.e means split the commit line into half and then searching would be easier by dividing it using binary search

> command for do is --- git bisect

> git pull --rebase origin branch_name(dev) -- runs this command daily to pull the changes from dev to feature

# Terminologies used in professional life

- key terms

- configure management -- Audit (we need checks and balances of what we are doing)-> by doing frequent commits

- System -code or product which we are devloping is called system.(for it people)

- COnfiguration Item(CI)-- deals with your git i.e files

- Release management -- branching strategies -- master branch for customer ,staging for testing, dev for developers.CI/CD(continues integration and continous deployement) -- deploy master to netlify.

-
