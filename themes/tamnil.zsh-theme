# ZSH Theme - Preview: http://cl.ly/f701d00760f8059e06dc
# Thanks to gallifrey, upon whose theme this is based

# local return_code="%(?..%{$fg_bold[red]%}%? ↵%{$reset_color%})"
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

function my_git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  GIT_STATUS=$(git_prompt_status)
  [[ -n $GIT_STATUS ]] && GIT_STATUS=" $GIT_STATUS"
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$GIT_STATUS$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

PROMPT='%{$fg_bold[green]%}%n@%m%{$reset_color%} %{$fg_bold[blue]%}%5~%{$reset_color%}%{$reset_color%}
%{$fg_bold[red]%}]-%B>%b%{$reset_color%} '
RPS1="${return_code}"

MODE_INDICATOR="%{$fg_bold[magenta]%}<%{$reset_color%}%{$fg[magenta]%}<<%{$reset_color%}"


# right prompt
if type "virtualenv_prompt_info" > /dev/null
then
	RPROMPT='[${return_code}]$(my_git_prompt_info)$(virtualenv_prompt_info)%{$fg[green]%}[%*]%{$reset_color%}'
else
	RPROMPT='$(my_git_prompt_info){$fg[green]%}[%*]%{$reset_color%}'
fi
PS='%{$fg[red]%}\ %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=") %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%%"
ZSH_THEME_GIT_PROMPT_ADDED="+"
ZSH_THEME_GIT_PROMPT_MODIFIED="*"
ZSH_THEME_GIT_PROMPT_RENAMED="~"
ZSH_THEME_GIT_PROMPT_DELETED="!"
ZSH_THEME_GIT_PROMPT_UNMERGED="?"

