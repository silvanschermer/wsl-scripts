#!/bin/bash

ZSHRC="/home/silvan/.zshrc"
THEME="robbyrussell"
# check if ZSH is installed
zsh=$(dpkg -l | grep -i zsh)

if [ "$zsh" = "" ];
then
    sudo apt-get update
    sudo apt-get install zsh

    chsh -s $(which zsh) # make zsh the default shell

    # $ZSH is the path variable set by oh my zsh
    if [ "$ZSH" = "" ];
        then
        ## Install oh my ZSH from github
            sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

        else
            echo "ohmyzsh is already installed."

        fi
else
    echo "zsh is already installed."
fi

exit 1