关联本地仓库到 GitHub 远程仓库
==============================

当你在 [GitHub](github.com) 创建一个代码仓库后，需要將其与你的本地仓库关联起来。

在本地创建一个新仓库并关联：

    cd /path/to/repo
    touch README.md
    git init
    git add README.md
    git commit -m "First commit"
    git remote add origin git@github.com:zhaqiang/learngit.git
    git push -u origin master

 关联一个已存在的仓库:

    cd /path/to/repo
    git remote add origin git@github.com:zhaqiang/learngit.git
    git push -u origin master

**NOTE** 记得把 `zhaqiang` 换成你自己的 GitHub 账户。

## 说明：

### git remote add 命令 - 添加远程仓库

简单用法：`git remote add <name> <url>`

**origin** 是远程仓库的 name，这是 Git 默认的叫法，你也可以改成别的。url 就是仓库在 GitHub 的url 了。根据我的理解，这其实是为远程仓库的 url 在本地映射了一个简短的名字。

更详细的用法使用 `git help remote` 命令查看。

### git push 命令 - 推送内容到远程仓库

首次推送 master 分支时，由于远程库是空的，所以加上了 -u 参数，Git不但会把本地的 master 分支内容推送的远程新的 master 分支，还会把本地的 master 分支和远程的 master 分支关联起来，在以后的推送或者拉取时就可以简化命令。

首次推送完成后，就可以用 `git push origin master` 进行推送了。

更详细的说明，使用 `git help push` 查看。
