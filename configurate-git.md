配置 Git
========

保存 Git 的环境变量的文件为以下三个：

 *	/etc/gitconfig - 对所有用户都适用的 Git 配置。执行`git config --system`命令时读写的就是这个文件。
 *	~/.gitconfig - 对当前登录用户适用的 Git 配置。执行`git config --global`命令时读写的就是这个文件。
 *	git-repo/.git/config - 仅对当前项目有效的 Git 配置。

**NOTE**: 下层的配置会覆盖上层的同名变量。

## 配置用户信息

    git config --global user.name "Your Name"
    git config --global user.email email@example.com

用户名和 email 应该在安装 Git 后就配置好，因为每次提交时 Git 都会引用这两个信息，说明是谁进行了提交。命令中使用了 --global 选项，该用户名和 email 会保存在 ~/.gitconfig 文件里。如果想在当前项目设置不同的用户名和 email，那么只要去掉 --global 选项即可。

## 配置文本编辑器

当 Git 需要你输入一些额外信息的时候，就会调用一个外部的文本编辑器，默认为操作系统的默认编辑器。可以通过以下命令来设置你喜欢的编辑器，例如 vim 和 emacs。

    git config --global core.editor vim

## 配置 diff 工具

    git config --global merge.tool vimdiff

## 列出当前配置

    git config --list

## 配置 git push

    git config --global push.default matching

'matching' 参数是 Git 1.x 的默认行为，其意是如果你执行 `git push` 但没有指定分支，它将 push 所有你本地的分支到远程仓库中对应匹配的分支。而 Git 2.x 默认的是 simple，意味着执行 git push 没有指定分支时，只有当前分支会被 push 到你使用 git pull 获取的代码。

## 配置全局 gitignore

    git config --global core.excludesfile /path/to/.gitignore_global

推荐的全局 gitignore 文件在本项目根目录下的 gitignore_recommended 文件中。

## Git 输出着色

    git config --global color.ui true

## 配置 push 策略

    git config --global push.default simple

`matching` 参数是 Git 1.x 的默认行为，其意是如果你执行 `git push` 但没有指定分支，它将 push 所有你本地的分支到远程仓库中对应匹配的分支。

而 Git 2.x 默认的是 `simple`，意味着执行 git push 没有指定分支时，只有当前分支会被 push 到你使用 git pull 获取的代码。
