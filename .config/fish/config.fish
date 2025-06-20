fish_add_path /home/linuxbrew/.linuxbrew/bin
fish_add_path $HOME/.local/bin/

set -x EDITOR nvim
set -x NVIM_APPNAME lazyvim # Default neovim config directory

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

# Added by `rbenv init` on on. 21. mai 22:56:05 +0200 2025
status --is-interactive; and rbenv init - --no-rehash fish | source

# pnpm
set -gx PNPM_HOME "/home/mats/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
