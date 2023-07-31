ZSH_THEME="agnoster"
export TERM=xterm-256color

plugins=(
	git
	vi-mode
	zsh-autosuggestions
	history
)

export ZSH="$HOME/.oh-my-zsh"
export _colcon_cd_root=/opt/ros/foxy/

source $ZSH/oh-my-zsh.sh
source /usr/share/colcon_cd/function/colcon_cd.sh

alias vim="nvim"

#-------- Custom functions --------#
#chros() { source /opt/ros/$1/setup.zsh } # Usage: chros <distro>
source /opt/ros/humble/setup.zsh
gz_wave() {
	export GZ_VERSION=garden
	export GZ_IP=127.0.0.1

	# Ensure the model and world files are found
	export GZ_SIM_RESOURCE_PATH="$GZ_SIM_RESOURCE_PATH:$HOME/gz_ws/src/asv_wave_sim/gz-waves-models/models:$HOME/gz_ws/src/asv_wave_sim/gz-waves-models/world_models:$HOME/gz_ws/src/asv_wave_sim/gz-waves-models/worlds:$HOME/ardupilot_gazebo/worlds"

	# ensure the system plugins are found
	export GZ_SIM_SYSTEM_PLUGIN_PATH="$GZ_SIM_SYSTEM_PLUGIN_PATH:$HOME/gz_ws/install/lib:$HOME/ardupilot_gazebo/build"

	# ensure the gui plugin is found
	export GZ_GUI_PLUGIN_PATH="$GZ_GUI_PLUGIN_PATH:$HOME/gz_ws/src/asv_wave_sim/gz-waves/src/gui/plugins/waves_control/build"

	# source the asv wave simulation
	source /home/toyat/gz_ws/install/setup.zsh
}
