#!/bin/bash
cp ~/.bashrc ~/.bashrc.backup
cp ./.bashrc ~/.bashrc
cp -r ./.shells ~/
cp ./.tmux.conf ~/
source ~/.bashrc
