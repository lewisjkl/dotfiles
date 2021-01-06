alias dcp='docker-compose'
alias dkstop='docker stop $(docker ps -a -q)'

source $(brew --prefix)/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle command-not-found
antigen bundle osx
antigen bundle npm
antigen bundle brew
antigen bundle common-aliases
antigen bundle web-search
antigen bundle thefuck
antigen bundle compleat
antigen bundle z
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh

antigen theme dracula/zsh dracula

antigen apply

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=cyan"

JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home"
