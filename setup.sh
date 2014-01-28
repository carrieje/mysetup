:

# Gitconfig profile
ln -s --backup=t $PWD/.gitconfig $HOME/.gitconfig

# Git global .gitignore
git config --global core.excludesfile $PWD/.global_gitignore

# Indent profile
ln -s --backup=t $PWD/.indent.pro $HOME/.indent.pro

# Bashrc customization
echo -e "\n\n# MySetup configuration #\n#########################\n" >> ~/.bashrc
echo -e "# MYSETUP Path\nexport MYSETUP_PATH=$PWD" >> ~/.bashrc
echo -e "source \$MYSETUP_PATH/bashrc_extension.sh" >> ~/.bashrc

# DONE
echo "Here you are, mysetup is successfully installed !"

