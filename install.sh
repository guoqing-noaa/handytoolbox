#!/bin/bash

srcdir=$(pwd)

cd ${HOME}
mkdir -p backup_bash
mv .bash_profile   backup_bash
mv .bashrc  backup_bash
mv .vimrc   backup_bash
mv .tmux.conf   backup_bash
mkdir -p .vim/colors

cp ${srcdir}/.bash* .
cp ${srcdir}/.vimrc .
cp ${srcdir}/.tmux.conf .
cp ${srcdir}/.gge.vim .vim/colors
