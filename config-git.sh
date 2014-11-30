#!/bin/bash

BaseDir=`dirname $0`
BaseDir=`cd ${BaseDir}; pwd`

git config --global user.name "zhaqiang"
git config --global user.email hugochougt@gmail.com

git config --global core.editor vim
git config --global merge.tool vimdiff
git config --global color.ui true

git config --global push.default simple

ln -s ${BaseDir}/gitignore_global ~/.gitignore_global
