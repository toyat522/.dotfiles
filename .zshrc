ZSH_THEME="eastwood"
export TERM=xterm-256color

plugins=(
	git
	vi-mode
	zsh-autosuggestions
	history
)

export ZSH="$HOME/.oh-my-zsh"
#export _colcon_cd_root=/opt/ros/foxy/

source $ZSH/oh-my-zsh.sh
#source /usr/share/colcon_cd/function/colcon_cd.sh

alias vim="nvim"

#-------- Custom functions --------#
#chros() { source /opt/ros/$1/setup.zsh } # Usage: chros <distro>
