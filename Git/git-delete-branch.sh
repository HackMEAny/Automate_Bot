# To delete all local branches that are already merged into the currently checked out branch:
git branch --merged | egrep -v "(^\*|master|main|dev)" | xargs git branch -d

# You can delete a merged local branch with:
git branch -d branchname

# If it's not merged, use:
git branch -D branchname

# To delete it from the remote use:
git push --delete origin branchname

# Once you delete the branch from the remote, you can prune to get rid of remote tracking branches with:
git remote prune origin
