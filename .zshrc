
### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

### The actual config

# Speed test
zinit light paulmelnikow/zsh-startup-timer

# Load theme
zinit light denysdovhan/spaceship-prompt

# Nice libs from oh-my-zsh
# Load this lib immediatly because it can't work if wait
zinit for \
    OMZ::lib/history.zsh \
    OMZ::lib/key-bindings.zsh 
# Load these libs only after prompt is loaded
zinit wait lucid for \
    OMZ::lib/completion.zsh \
    OMZ::lib/termsupport.zsh

# Load these plugins 1 second after prompt loaded
zinit wait="1" lucid light-mode for \
    zsh-users/zsh-autosuggestions \
    zdharma/history-search-multi-word \
    wfxr/forgit \
    zdharma/fast-syntax-highlighting 

# Provide cool binaries from github release
zinit as="program" wait="1" lucid from="github-rel" for \
    junegunn/fzf-bin 
# Move delta from its subdir to the main dir and pick it as program
zinit ice mv="delta-0.4.4-x86_64-unknown-linux-gnu/delta -> delta" \
    wait="1" lucid pick="delta" as="program" from="github-rel"
zinit load dandavison/delta

# Load my aliases
source $HOME/.aliases
