* install
apt-get install fish

* set as shell
chsh -s /usr/bin/fish

* edit config
mkdir -p ~/.config/fish
vim ~/.config/fish/config.fish

* change the start message
set -g -x fish_greeting ''

* ho my fish 
curl -L https://get.oh-my.fish | fish

* install fira font
sudo apt install fonts-firacode

* install staship prompt
curl -fsSL https://starship.rs/install.sh | bash
> ~/.config/fish/config.fish
starship init fish | source

* ! si startship no work add new line to the prompt: 
functions --copy fish_prompt fish_prompt_original
function fish_prompt; echo; fish_prompt_original; end
funcsave fish_prompt_original
funcsave fish_prompt



