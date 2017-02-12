# Magit

前提：Spacemacs vim mode

## magit-status

    SPC g s

Display information about the current Git repository.

**Most Magit commands are commonly invoked from the status buffer.**

## In status buffer

### magit-refresh

    g r

刷新缓冲区

### magit-branch-and-checkout

    b c

Branch 相关的按 `b`:

 1. `b b` checkout an exist branch
 2. `b m` rename a branch
 3. `b ? [bcm]` 查看相关用法详情

### magit-stash-file

    # move to unstaged file
    s

Stage untracked file.

### magit-unstage-file

    # move to staged file
    u

Unstage staged file.

### magit-commit-popup

    c # a list of actions
    c # git commit
    # write the commit message
    C-c C-c

### push

    p p
