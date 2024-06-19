# Requires https://github.com/olimorris/tmux-pomodoro-plus

show_pomodoro() {
	local color module status
	color="$(get_tmux_option "@catppuccin_pomodoroplus_color" "$thm_orange")"
	status="$(get_tmux_option "@catppuccin_pomodoroplus_status" "#{pomodoro_status}")"
	module=$(build_status_module "$1" "" "$color" "$status")
	echo "$module"
}
