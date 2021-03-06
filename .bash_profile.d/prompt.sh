[ -x /usr/share/git-core/git-prompt.sh ] && source /usr/share/git-core/git-prompt.sh 

PROMPT_TYPE=full

prompt_command_function () {
    # Command prompt that mimics grml's zsh prompt.
    # This assumes a term that can handle colors
    ## Return Code if != 0
    local prev_return=$?
    if [ $prev_return -eq 0 ]; then
rc=""
    else
rc="$red${prev_return}$colors_reset "
    fi

    # Git status
    GIT_PS1_SHOWDIRTYSTATE="true"
    GIT_PS1_SHOWUNTRACKEDFILES="true"
    # __git_ps1 lives in git's bash completion script
    git_status=$(__git_ps1 '%s')
    if [ ! -z "$git_status" ]; then
git_status=" $magenta($reset$green$git_status$magenta)$reset"
    fi

case $PROMPT_TYPE in
        minimal)
            export PS1="\w > "
            ;;
        simple)
            export PS1="$rc$blue\h$reset $bold\w$reset\$ "
            ;;
        full)
            export PS1="$rc$blue\h$reset $bold\w$reset$git_status\$ "
            ;;
        *)
            export PS1="\w > "
            ;;
    esac
}

prompt_type() {
    PROMPT_TYPE=$1
}

PROMPT_COMMAND=prompt_command_function
