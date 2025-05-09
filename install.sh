#!/bin/bash

srcdir=$(pwd)
seconds=$(date +%s)

cd ${HOME}
mkdir -p backup_bash_${seconds}
mv .bash_profile   backup_bash_${seconds}
mv .bashrc  backup_bash_${seconds}
mv .vimrc   backup_bash_${seconds}
mv .tmux.conf   backup_bash_${seconds}

cp ${srcdir}/.bash* .
cp ${srcdir}/.vimrc .
cp ${srcdir}/.tmux.conf .
