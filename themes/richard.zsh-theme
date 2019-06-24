function collapse_pwd {
    echo $(pwd | sed -e "s,^$HOME,~,")
}
function user_or_hostname {
    if [[ $SHORT_HOST == "t460y" ]];
        then
            if [[ $USERNAME != "richard" ]];
                then echo "[%n]"
            fi
        else echo "[%n@%m]"
    fi
}

PROMPT='%{$fg_bold[white]%}$(user_or_hostname)%{$fg_bold[cyan]%}$(collapse_pwd)%{$reset_color%}$(git_prompt_info)%{$fg_bold[cyan]%#%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[yellow]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}"
