:

# Gitconfig profile
ln -s $PWD/.gitconfig $HOME/.gitconfig

# Git global .gitignore
git config --global core.excludesfile $PWD/.global_gitignore

# Indent profile
ln -s $PWD/.indent.pro $HOME/.indent.pro

# Personal bash aliases
echo -e "\n\n# Personal aliases\nsource $PWD/bash_aliases" >> ~/.bashrc
