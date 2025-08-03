if status is-interactive
    # Extend path
    set -gx PATH $HOME/.cargo/bin $PATH

    # Commands to run in interactive sessions can go here
    # Vim-style navigation with Ctrl key
    bind \ch backward-char
    bind \cj down-or-search
    bind \ck up-or-search
    bind \cl forward-char
    bind \cV execute
    bind ö execute
    bind \cp backward-kill-word

    # Ctrl + R for command history search
    bind \cr 'history | fzf --height 40% --reverse --border | read -l result; and commandline $result'

    # Ctrl + T for file search
    bind \ct 'find . -type f | fzf --height 40% --reverse --border | read -l result; and commandline -i $result'

    function cdf
        cd (cdd $argv)
    end

end
