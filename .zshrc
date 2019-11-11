# zplug initialization
[[ ! -f $HOME/.zplug/init.zsh ]] && git clone https://github.com/zplug/zplug $HOME/.zplug
source $HOME/.zplug/init.zsh

#do self-manage
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# load config
[[ -f $HOME/.config/zsh/init ]] && source $HOME/.config/zsh/init

# load nice libs from oh-my-zsh
zplug "lib/completion",   from:oh-my-zsh
zplug "lib/history",      from:oh-my-zsh
zplug "lib/termsupport",  from:oh-my-zsh

# for speed debug 
zplug "paulmelnikow/zsh-startup-timer"

# naisu minimal theme
zplug 'denysdovhan/spaceship-prompt', use:spaceship.zsh, from:github, as:theme

# another eyecandy
zplug 'zsh-users/zsh-autosuggestions', from:github
zplug 'MikeDacre/tmux-zsh-vim-titles', from:github
zplug 'zdharma/fast-syntax-highlighting', defer:2, hook-load:'FAST_HIGHLIGHT=()'

# finally install and load those plugins
zplug check || zplug install
zplug load
