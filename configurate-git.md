配置 Git
===================

保存 Git 的环境变量的文件为以下三个：

 *	/etc/gitconfig - 对所有用户都适用的 Git 配置。执行`git config --system`命令时读写的就是这个文件。
 *	~/.gitconfig - 对当前登录用户适用的 Git 配置。执行`git config --global`命令时读写的就是这个文件。
 *	<git-repo>/.git/config - 仅对当前项目有效的 Git 配置。

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
