alias nvim-lazy="NVIM_APPNAME=LazyVim nvim"

function nvims
    set items LazyVim nvim
    set prompt 'NeoVim Config: '
    set config (printf "%s\n" $items | fzf --height=50% --border --prompt=$prompt)

    if not test $config
        set -e config
    end

    NVIM_APPNAME=$config nvim $argv
end
