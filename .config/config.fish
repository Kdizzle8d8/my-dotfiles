if status is-interactive
    # Commands to run in interactive sessions can go here
end
 starship init fish | source

# pnpm
set -gx PNPM_HOME /Users/kyledavis/Library/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
set -gx ANDROID_HOME /Users/kyledavis/Library/Android/sdk
set -gx NDK_HOME /usr/local/share/android-ndk

alias fishcf='nvim ~/.config/fish/config.fish'
alias fishrf='source ~/.config/fish/config.fish'
alias osy='fish -c "cd ~/Documents/obsidian; git fetch; git pull; git add .; git commit -am \"$(date)\"; git push;"'

thefuck --alias | source
function cdf
    set selection (fzf)
    if test -n "$selection"
        cd (dirname $selection)
    end
end

function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end
alias l="ls -lah"
alias nvc="nvim ~/.config/nvim/init.lua"
alias kcf="nvim ~/.config/kitty/kitty.conf"
alias cgc="curl google.com"
set -gx EDITOR (which nvim)
fish_add_path '/Users/kyledavis/go/bin'

