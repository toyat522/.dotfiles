export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="jaischeema"

plugins=(
	git
	vi-mode
	zsh-autosuggestions
	web-search
	copypath
	copyfile
	copybuffer
	history
)

source $ZSH/oh-my-zsh.sh
#source /opt/ros/noetic/setup.zsh
source /opt/ros/foxy/setup.zsh
source /usr/share/colcon_cd/function/colcon_cd.sh
export _colcon_cd_root=/opt/ros/foxy/

export TERM=xterm-256color
