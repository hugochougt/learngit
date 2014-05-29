Git log
=======

### A better git log

    git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit

Make it an alias of `git lg`:

    $ git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

Use `git lg -p` to see the lines that changed.

**NOTE**: The tip is a copy of [A better git log](https://coderwall.com/p/euwpig?i=3&p=1&t=git) written by Filipe Kiss.

