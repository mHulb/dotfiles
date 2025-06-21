if status is-interactive
    # Vim-style navigation with Ctrl key
    bind \ch backward-char
    bind \cj down-or-search
    bind \ck up-or-search
    bind \cl forward-char
    bind \u00F6 execute
    bind \cp backward-kill-word

    # Ctrl + R for command history search
    bind \cr 'history | fzf --height 40% --reverse --border | read -l result; and commandline $result'
    # Ctrl + R for command history search
    bind \cr 'history | fzf --height 40% --reverse --border | read -l result; and commandline $result'

    # Fuzzy cd
    function cdf
        cd (cdd $argv)
    end
end
