Tagging
=======

## 列出所有标签

    git tag

## 搜索标签

Git 允许用特定的搜索模式列出符合条件的标签。例如只对 1.4.2 系列的版本感兴趣，可以运行下面的命令：

    git tag -l 'v1.4.2.*'

## 新建标签

Git 使用标签有两种类型：轻量级的（lightweight）和含附注的（annotated）。一般都建议使用 annotated tag，以便保留相关信息。

### Lightweight Tags

Lightweight tag 实际上就是一个保存着对应提交对象的校验和（checksum）信息的文件。创建一个 Lightweight tag：

    git tag v1.1.0001

### Annotated Tags

创建一个 annotated tag 也很简单，用 `-a` 指定标签名即可：

    git tag -a v1.1 -m 'My version 1.1'

使用 `git show v1.1` 可查看相应标签的版本详细信息。

## 后期加注标签

Git 允许你在后期对早先的某次提交加注标签，只要在打标签时跟上对应提交对象的 checksum 即可（使用 `git log` 列出 checksum）：

    git tag -a v0.9 <checksum>

## 分享标签

默认情况下 `git push` 并不会把标签传送到远程服务器上，只有通过显式命令才能分享标签到远程仓库。命令格式如同推送分支，运行 `git push origin [tagname]` 即可。

如果要一次推送所有（本地新增的）标签上去，可以使用 `--tags` 选项：

    git push origin --tags


