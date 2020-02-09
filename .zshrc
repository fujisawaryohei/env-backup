# Ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Node.js
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# Yarn for throughing  path after yarn global install~
export PATH="$PATH:"/usr/local/lib/node_modules/node/bin"";
export PATH="$PATH:`yarn global bin`"

# Java
#export JAVA_HOME=`/usr/libexec/java_home -v "11"`
export PATH=/usr/local/bin:$PATH
export JAVA_HOME=`/usr/libexec/java_home -v "1.8"`
export PGDATA='/usr/local/var/postgres'
PATH=${JAVA_HOME}/bin:${PATH}

# Databases
export PGDATA='/usr/local/var/postgres'

# nand2tetris
export PATH="$PATH:"~/development/nand2tetris/tools"";

########################################
#zsh settings
export LANG=en_US.UTF-8

setopt IGNOREEOF

# ライン操作はEmacsスタイルで行う
bindkey -e

# 色を使用できるようにする
autoload -Uz colors
colors

# 予測入力させる
autoload predict-on
zle -N predict-on
zle -N predict-off
bindkey '^X^P' predict-on
bindkey '^O' predict-off
zstyle ':predict' verbose true

# 補完機能を有効にする
autoload -Uz compinit
compinit -u

# 補完機能の表示に関する設定
zstyle ':completion:*' verbose yes
zstyle ':completion:*' completer _expand _complete _match _prefix _approximate _list _history
zstyle ':completion:*:messages' format $YELLOW'%d'$DEFAULT
zstyle ':completion:*:warning' format $RED 'No matches for:' $YELLOW %d $DEFAULT
zstyle ':completion:*:descriptions' format $YELLOW'completing %B%d%b'$DEFAULT
zstyle ':completion:*:corrections' format $YELLOW'%B%d '$RED'(errors: %e)%b'$DEFAULT
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*' group-name ''

#ディレクトリを切り替えるときの補完設定
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' ignore-parents parent pwd ..

# Prompt 設定
PROMPT="%{${fg[green]}%}[%n@%m]%{${reset_color}%} %~ 💰"$'\n'$'%# '

# History 設定
HISTFILE=~/.zsh_history
HISTSIZE=100000000
SAVEHIST=100000000

# Multi Byte Character Support
setopt print_eight_bit

# Treat text as comment after '#'
setopt interactive_comments

# Disable beep
setopt no_beep
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt extended_glob

bindkey '^R' history-incremental-pattern-search-backward

# vcs_info
autoload -Uz vcs_info
autoload -Uz add-zsh-hook

zstyle ':vcs_info:*' formats '%F{green}(%s)-[%b]%f'
zstyle ':vcs_info:*' actionformats '%F{red}(%s)-[%b|%a]%f'

function _update_vcs_info_msg() {
    LANG=en_US.UTF-8 vcs_info
    RPROMPT="${vcs_info_msg_0_}"
}
add-zsh-hook precmd _update_vcs_info_msg


# User standard clipboard
# mollifier delta blog : http://mollifier.hatenablog.com/entry/20100317/p1
if which pbcopy >/dev/null 2>&1 ; then
    # Mac
    alias -g C='| pbcopy'
elif which xsel >/dev/null 2>&1 ; then
    # Linux
    alias -g C='| xsel --input --clipboard'
fi

case ${OSTYPE} in
    darwin*)
        export CLICOLOR=1
        alias ls='ls -G -F'
        ;;
    linux*)
        alias ls='ls -F --color=auto'
        ;;
esac

function cd(){
  builtin cd $@ && ls;
}
