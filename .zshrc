ZSH_THEME="eastwood"

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

export ZSH="$HOME/.oh-my-zsh"
export _colcon_cd_root=/opt/ros/foxy/
export TERM=xterm-256color

source $ZSH/oh-my-zsh.sh
#source /opt/ros/noetic/setup.zsh
source /opt/ros/foxy/setup.zsh
source /usr/share/colcon_cd/function/colcon_cd.sh
