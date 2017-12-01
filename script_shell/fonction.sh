#
teste ()
{
	echo "$1"
	echo "$2"
}

mcd ()
{
    mkdir -p $1
    cd $1
}

function gitp ()
{
    command git add .
    command git commit -m "$1"
    command git push;
}

function gh ()
{
    command git add .
    command git commit -m "$1"
    command git push heroku master;
}

function dose ()
{
	for (( i = 0; i <= $1; i++ )); do
		if ((i <= 9))
			then
				mkdir ex0"$i"
		else
				mkdir ex"$i"
		fi
	done
}

function giti ()
{
	git init
	git add README.md
	touch .gitignore
	git add .
	git commit -m "first commit"
	git remote add origin "$1"
	git push -u origin master

}

alias w="cd /Users/adrienpsl/Dropbox/web/Sites"
alias d="/Users/psl/Dropbox"
alias gs="git status"
alias ga="git add"
alias gm="git commit -m"
alias gma="git commit -a -m"
alias gmm="git commit"
alias gl="git log"
alias glo="git log --oneline"
alias gr="git revert -m"
alias sdd="clear"
alias gc="git checkout"
alias v="vim"
alias c="cat="
alias gt="git stash"
alias gi="touch .gitignore"
alias rmd="rm -Rf"
alias 42="/Users/adrienpsl/Dropbox/42"
alias 422="/Users/adpusel/Dropbox/42"
alias g="gcc -Wall -Wextra -Werror"
alias n="nodemon"