# Requires https://github.com/olimorris/tmux-pomodoro-plus

show_pomodoro() {
  local color module
  color="$( get_tmux_option "@catppuccin_pomodoroplus_color" "$thm_green" )"
  module=$( build_status_module "$1" "" "$color" "#{pomodoro_status}" )
  echo "$module"
}

