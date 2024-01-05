ZSH_THEME="gnzh"
export TERM=xterm-256color

plugins=(
	git
	vi-mode
	zsh-autosuggestions
	history
)

export ZSH="$HOME/.oh-my-zsh"
export NODE_OPTIONS="--dns-result-order=ipv4first"
export _colcon_cd_root=/opt/ros/humble/
export IVP_IMAGE_DIRS=~/arcturus/moos-ivp-arcturus/images/

source $ZSH/oh-my-zsh.sh

source /opt/ros/humble/setup.zsh
source /usr/share/colcon_cd/function/colcon_cd.sh
source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.zsh
eval "$(register-python-argcomplete3 ros2)"
eval "$(register-python-argcomplete3 colcon)"

alias vim="nvim"
