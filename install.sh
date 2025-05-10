#!/bin/bash
srcdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
seconds=$(date +%s)

set -x
cd ${HOME}
mkdir -p backup_bash_${seconds}
mv .bash_profile   backup_bash_${seconds}
mv .bashrc  backup_bash_${seconds}
mv .vimrc   backup_bash_${seconds}
mv .tmux.conf   backup_bash_${seconds}
mv .ssh/config   backup_bash_${seconds}

cp ${srcdir}/.bash* .
cp ${srcdir}/.vimrc .
cp ${srcdir}/.tmux.conf .
cp ${srcdir}/config .ssh
