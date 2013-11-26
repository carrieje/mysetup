:

# Gitconfig profile
ln -s $PWD/.gitconfig $HOME/.gitconfig

# Git global .gitignore
git config --global core.excludesfile $PWD/.global_gitignore

# Indent profile
ln -s $PWD/.indent.pro $HOME/.indent.pro

# Bashrc customization
echo -e "\n\n# MySetup configuration" >> ~/.bashrc

# Personal bash aliases
echo -e "\n# MYSETUP Path\nexport MYSETUP_PATH=$PWD" >> ~/.bashrc

# Personal bash aliases
echo -e "\n# Personal aliases\nsource $PWD/bash_aliases" >> ~/.bashrc
