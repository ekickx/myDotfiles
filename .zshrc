export ZPLUG_HOME=$HOME/.zplug
setopt auto_cd

# zplug initialization
[[ ! -f $ZPLUG_HOME/init.zsh ]] && git clone https://github.com/zplug/zplug $ZPLUG_HOME
source $ZPLUG_HOME/init.zsh

#do self-manage
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# load config
[[ -f $HOME/.config/zsh/init ]] && source $HOME/.config/zsh/init

# load nice libs from oh-my-zsh
zplug "lib/completion",   from:oh-my-zsh
zplug "lib/history",      from:oh-my-zsh
zplug "lib/termsupport", from:oh-my-zsh

# for speed debug. mine ? 230ms, not bad tho
zplug "paulmelnikow/zsh-startup-timer"

# naisu minimal theme
zplug denysdovhan/spaceship-prompt, use:spaceship.zsh, from:github, as:theme

# another eyecandy
zplug 'zsh-users/zsh-autosuggestions', from:github
# zplug 'zdharma/fast-syntax-highlighting', defer:2, hook-load:'FAST_HIGHLIGHT=()'

# finally install and load those plugins
zplug check || zplug install
zplug load

# Path
# export PATH=$PATH":$HOME/.commands"
export PATH=$PATH":$HOME/.local/bin"
