#!/bin/bash

CONFS=(.bashrc .conkyrc .ctags .gitconfig .profile .tmux.conf .zshrc)
BASE="$(pwd)"
BACKUP=~/backup

if [ ! -e $BACKUP ] ; then
    mkdir $BACKUP
fi
for conf in ${CONFS[@]}
do
   	if [ -e ~/$conf ] ; then
        mv ~/$conf ~/backup
    fi
    ln -s $BASE/$conf ~/$conf
done

if [ -e ~/.oh-my-zsh/themes/robbyrussell.zsh-theme ] ; then
    mv ~/.oh-my-zsh/themes/robbyrussell.zsh-theme ~/backup
fi
cp oh-my-zsh/themes/robbyrussell.zsh-theme ~/.oh-my-zsh/themes/robbyrussell.zsh-theme
