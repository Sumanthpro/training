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

> git blame -- tell how many times edits are happend those history will be shown(audit)

> git diff -- aslo done by audit team

# Terminologies used in professional life

## key terms

- configure management -- Audit (we need checks and balances of what we are doing)-> by doing frequent commits

- CI,Audit , Baseline(SP) , Accounting , Change management

  | | | | |

files git blame, commits, git log, Branches,PR
git diff Tags git blame

- System --- code or product which we are devloping is called system.(for it people)

- COnfiguration Item(CI)-- deals with your git i.e files

- Release management -- branching strategies -- master branch for customer ,staging for testing, dev for developers.CI/CD(continues integration and continous deployement) -- deploy master to netlify.

## Benifits:

- Traceability -- why ,who did
- quality & consistency -- code quality and maintaining good code qaulity consistancy
- Reduces Risk & Errors -- storing for backup
- Change Management

# Release Management

1. Plannig - Branching Strategy
2. Governance - to maintain a system (Access level for each branch)
3. Scheduling - Spirnt, Agile,proper schedule to manage release through sprints
4. Automation - CI/CD, no human error
5. Contigency - it is like a backup plan if main code is failed i.e (rollback to the older version)

## Important points

```js
selenium is a tool used to test the code automatically (seleinum is written in java)
cyuprus is a tool used to test the code automatically(cyuprus is written in java script)
```

```js
[github] --> (merge)/devops [Netlify] -----> (build) [removes comments,extra spaces ,variables i.e it creates certain variables simply called uglier] ----> (demo)  [Automation test either selenium/cyuprus]  ---> [customer]
  |
  |
  [stop]
```
