#!/bin/bash
# Backs up old dotfiles, then moves dotfiles in this folder to the home directory

dir=~/dotfile
olddir=~/dotfiles_old

# Back up dotfiles
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in .[^.]*; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/$file ~/dotfiles_old/
    echo "Moving dotfile to home directory."
    cp -r $file ../
done
