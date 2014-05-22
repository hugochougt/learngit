撤销操作
=======

## 修改最后一次提交

撤销最后一次提交并重新提交一次，可使用 `--amend` 选项进行 commit:

    git commit --amend

此命令将使用当前的暂存区域快照提交。

## 取消已暂存的文件

    git reset HEAD <file>

## 取消对文件的修改

    git checkout -- <file>

## reset HEAD 的几个区别

    git reset HEAD^         # 留着修改在 working tree
    git reset HEAD^ --soft  # 修改放到 staging area
    git reset HEAD^ --hard  # 完全删除

