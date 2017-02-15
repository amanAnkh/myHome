#!/bin/sh

echo "EMACS"
cp emacs/.emacs ~
cp -R emacs/.emacs.d/ ~

echo "NANORC"
cp nano/.nanorc ~

echo "ZSHRC"
cp zsh/.zshrc ~
