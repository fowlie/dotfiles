fish_add_path /home/linuxbrew/.linuxbrew/bin

set -x EDITOR nvim
set -x NVIM_APPNAME LazyVim # Default neovim config directory

# Set empty greeting
set -g fish_greeting

# Source custom scripts
for file in ~/.config/fish/functions/custom/*.fish
    source $file
end

# Git
abbr --add g git
abbr --add gs git status
abbr --add gd git diff
abbr --add gcm --position anywhere --set-cursor "git commit -m '%'"
abbr --add gap "git add -p"

if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
end
