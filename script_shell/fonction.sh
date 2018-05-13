
mcd ()
{
    mkdir -p $1
    cd $1
}

function gitp ()
{
    make fclean
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

function save()
{
	cd ~/Dropbox/42

	for fichier in `ls`
		do
	        echo $fichier "============================================================================================================================================="
	        echo \n
	        cd $fichier
	        gitp "save"
	        cd ..
	done 
}

function pull()
{
	cd ~/Dropbox/42
	
	for fichier in `ls`
		do
	        cd $fichier
	        git pull
	        cd ..
	done 
}



function ginit()
{
	git init
	git add .
	git commit -m "first commit"
	git remote add origin "$1"
	git push -u origin master
}
# make alias
alias re="make re"
alias config="cd /Users/adpusel/Dropbox/setting_software/script_shell ; open ."
alias w="cd /Users/adpusel/Dropbox/web/Sites"
alias d="/Users/adpusel/Dropbox"
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
alias 42="/Users/adpusel/Dropbox/42"
alias g="gcc -Wall -Wextra -Werror"
alias n="nodemon"
alias m="meteor"
alias mn="meteor npm install"
alias mkdir_meteor="mcd imports; mkdir routes api ui ; mcd styles ; mkdir components ; touch _main.scss ; mcd setting ; touch _settings.scss _variables.scss ; ../.."
alias imeteor="curl https://install.meteor.com/ | sh"
