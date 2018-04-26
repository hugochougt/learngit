git pull
========

## What `git pull` does

Users of Git are hopefully aware that a `git pull` does a `git fetch`` to pull down data from the specified remote, and then calls git merge to join the changes received with your current branch’s work.

## `git pull` 的问题

1. It merges upstream changes by default, when it's really more polite to [rebase over them](http://gitready.com/advanced/2009/02/11/pull-with-rebase.html), unless your collaborators enjoy a commit graph that looks like bedhead.
2. It only updates the branch you're currently on, which means `git push` will shout at you for being behind on branches you don't particularly care about right now.

## [Stop using `git pull`](https://adamcod.es/2014/12/10/git-pull-correct-workflow.html)

The correct way to merge upstream changes is like this:

  git fetch origin --prune

The `--prune`` flag will do some basic housekeeping, and make sure that any branches that were deleted on the remote are also deleted locally (but won't delete any locally checked-out branches, those are different from remote-tracking branches).

### Checkout and merge fast forward

  git checkout branch-name
  git merge --ff-only origin/branch-name
  # If you see "fatal: Not possible to fast-forward, aborting.", then:
  git rebase --preserve-merges origin/branch-name

## Solve them once and for all

If you update to Git 2.9 or later, you can use this alias instead of installing [`git-up`](https://github.com/aanand/git-up):

  git config --global alias.up 'pull --rebase --autostash'

If you'd rather this happened on every `git pull**, then you can do this:

  git config --global pull.rebase true
  git config --global rebase.autoStash true

## 血的教训

**Never rebase commits that have ever existed anywhere but your local repository. Use merge instead.**

## Ref

1. [Git commits are duplicated in the same branch after doing a rebase](https://stackoverflow.com/questions/9264314/git-commits-are-duplicated-in-the-same-branch-after-doing-a-rebase)
2. [git-up](https://github.com/aanand/git-up)
3. [Stop using `git pull`: A better workflow](https://adamcod.es/2014/12/10/git-pull-correct-workflow.html)
