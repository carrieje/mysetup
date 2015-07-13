####
# Regular

alias ll="ls -l"
alias la="ls -la"

alias grep=" grep --color=auto"

####
# More specific

# Compress PDFs
function compresspdf { gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile="${1%.pdf}_compressed.pdf" "$1"; }

# Import a template
function template { cp -i "$MYSETUP_PATH/templates/$1" .; }
export -f template

# Jump to the most used directory
# In the sense on the one which is set with setwd
function jmpwd {
	if ! [ -f "$MYSETUP_PATH/.current_working_dir" ]
	then
		touch "$MYSETUP_PATH/.current_working_dir"
	fi
	cd `cat "$MYSETUP_PATH/.current_working_dir"`;
}
export -f jmpwd

function setwd {
	echo $PWD/$1 > $MYSETUP_PATH/.current_working_dir;
}
export -f setwd

# Create a directory and jump to it
function mkcd { mkdir $1 && cd $1; }
export -f mkcd
