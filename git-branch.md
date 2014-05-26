Git 分支
========

## 基本操作

新建分支

    $ git branch <branch-name>

切换分支

    $ git checkout <branch-name>

新建分支的同时切换到该分支

    $ git checkout -b <branch-name>

合并其他分支到 master

    $ git checkout master
    $ git merge <branch-name>

删除分支

    $ git branch -d <branch-name>

使用 -D 参数可强制删除分支。

列出分支

    $ git branch
    $ git branch -v             # 列出所有分支及其最后一次 commit 信息
    $ git branch --merged       # 列出已经与当前分支合并的分支
    $ git branch --no-merged    # 列出还没有与当前分支合并的分支

## 冲突的合并

如果在合并时发生冲突，Git 会合并文件，但不会提交，而是会停下来等你解决冲突。

用 `git status` 命令查看发生冲突的文件，任何包含未解决冲突的文件都会以未合并（unmerged）状态列出。

编辑文件解决冲突后，运行 `git add` 将其标记为已解决（resolved）。因为一旦暂存，就表示冲突已经解决。

## rebase(衍合)

rebase 可以在某个分支里把另外一个分支的 commit 重放一遍。

    $ git checkout <branch-name>
    $ git rebase master
    $ git checkout master
    $ git merge <branch-name>

rebase 后还需要到另外的分支上进行一次快进合并。合并操作中最后一次 commit 所指向的快照，不管是通过三方合并还是衍合，都是一样的快照内容，只是提交的历史过程不同而已。但衍合可以产生一个更加整洁的提交历史。

**rebase 的金科玉律**

> 永远不要衍合那些已经推送到公共仓库的更新。

## 远程分支

远程分支的表示形式为 （远程仓库名）/（分支名）。远程分支是一些无法移动的本地分支，只有在 Git 进行网络活动时才会更新。

推送分支

    $ git push <remote-repo> <local-branch>

Git 的本地分支不会被自动同步到远程仓库，所以需要执行上述命令来明确推送本地分支到远程仓库上。如果需要在远程仓库上使用不同于本地分支的分支名，可执行下面的命令：

    $ git push <remote-repo> <local-branch>:<remote-branch>
