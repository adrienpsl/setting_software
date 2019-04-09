
mcd ()
{
    mkdir -p $1
    cd $1
}

function gitp ()
{
    # make fclean
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
	cd ~/Dropbox/42/projects

	for fichier in `ls`
		do
	        echo $fichier "============================================================================================================================================="
	        cd $fichier
	        gitp "save"
	        cd ..
	        echo ; echo ; echo; echo;
	done 

	cd ../setting_software
	gitp "save"

}

function fpull()
{
	git fetch --all
	git reset --hard origin/master
	git pull origin master
}

function pull()
{
	cd ~/Dropbox/42/projects

	for fichier in `ls`
		do
	        echo $fichier "============================================================================================================================================="
	        cd $fichier
	        git pull
	        cd ..
	        echo ; echo ; echo; echo;
	done 
	
	cd ../setting_software
	echo  "force settings ============================================================================================================================================="
	fpull
	cd ..
}

function ginit()
{
	mcd project
	mcd include
	touch all_includes.h
	cd ..
	mkdir src
	cd ..

	touch .gitignore
	echo 	".idea/
cmake-build-debug/
*.o" >> .gitignore
	
	git init
	git add .gitignore
	git commit -m "first commit"
	git remote add origin "$1"
	git push -u origin master
}

function publish()
{
	tsc
	gitp "$1"
	npm version patch 
	npm publish
}

# save les settings
alias save_settings="cd ~/code/setting_software && git add . && git commit -m 'save'&& git push origin master --force"

# make squad
alias gsdr='/Users/adpusel/code/squadR'
alias rad="npm run adrien"
alias sad="npm run startAdrien"
alias pmd="pm2 delete "$1" " 
alias pml="pm2 list " 


#alias shell
alias c='clear'

alias composer="php /usr/local/bin/composer.phar"
alias mysql="sudo /usr/local/mysql-8.0.12-macos10.13-x86_64/bin/mysql -u root -phamhamham"
alias p="pwd | pbcopy"
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
alias 42="~/code/42"
alias g="gcc -Wall -Wextra -Werror"
alias n="norminette | grep -b1 Error"
alias m="meteor"
alias mn="meteor npm install"
alias mkdir_meteor="mcd imports; mkdir routes api ui ; mcd styles ; mkdir components ; touch _main.scss ; mcd setting ; touch _settings.scss _variables.scss ; ../.."
alias imeteor="curl https://install.meteor.com/ | sh"
alias chm="chmod -R  755  *"
alias yi="yarn install"
alias ys="yarn start"


# export PATH="~/mongodb/bin:$PATH"


