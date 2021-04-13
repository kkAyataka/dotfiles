autoload -Uz compinit && compinit

# git
.  /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
# . /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.zsh

# nvm
if [ -e ~/.nvm/nvm.sh ]; then
  . ~/.nvm/nvm.sh
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
fi


# PROMPT
precmd() { print "" }
setopt PROMPT_SUBST
GIT_PS1_SHOWDIRTYSTATE=true
export PROMPT='%n@%m %d%F{cyan}$(__git_ps1 " (%s)")%f
%# '

# ssh-agent
# eval "$(ssh-agent -s)"
