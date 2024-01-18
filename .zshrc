ZSH_THEME="gnzh"
export TERM=xterm-256color

plugins=(
	git
	vi-mode
	history
	zsh-autosuggestions
)

export ZSH="$HOME/.oh-my-zsh"
export NODE_OPTIONS="--dns-result-order=ipv4first"
export _colcon_cd_root=/opt/ros/humble/
export PATH=~/moos-ivp/bin:$PATH
export PATH=~/moos-ivp/scripts:$PATH

source $ZSH/oh-my-zsh.sh

source /opt/ros/humble/setup.zsh
source /usr/share/colcon_cd/function/colcon_cd.sh
source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.zsh
eval "$(register-python-argcomplete3 ros2)"
eval "$(register-python-argcomplete3 colcon)"

alias vim="nvim"

# Source arcturus workspace function
sa() {
    source ~/arcturus/dev_ws/install/setup.zsh
    source ~/vrx_ws/install/setup.zsh
    export PATH=~/arcturus/moos-ivp-arcturus/bin:$PATH
    export PATH=~/arcturus/moos-ivp-arcturus/scripts:$PATH
    export IVP_IMAGE_DIRS=~/arcturus/moos-ivp-arcturus/images/
}

# Source robotx workspace function
sr() {
    source ~/robotx/dev_ws/install/setup.zsh
    source ~/vrx_ws/install/setup.zsh
    export PATH=~/robotx/moos-ivp-robotx/bin:$PATH
    export PATH=~/robotx/moos-ivp-robotx/scripts:$PATH
    export IVP_IMAGE_DIRS=~/robotx/moos-ivp-robotx/images/
}
