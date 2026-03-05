# main zsh settings. env in ~/.zprofile
# read second

# source global shell alias & variables files
if [ -f "${XDG_CONFIG_HOME}/shell/alias" ]; then
		source "${XDG_CONFIG_HOME}/shell/alias"
fi
if [ -f "${XDG_CONFIG_HOME}/shell/vars" ]; then
		source "${XDG_CONFIG_HOME}/shell/vars"
fi

# Load mac specific aliases
if [[ $(uname) == "Darwin" ]]; then
	if [ -f "${XDG_CONFIG_HOME}/shell/mac_alias" ]; then
		source "${XDG_CONFIG_HOME}/shell/mac_alias"
	fi
elif [ -f "${XDG_CONFIG_HOME}/shell/linux_alias" ]; then
	source "${XDG_CONFIG_HOME}/shell/linux_alias"
fi

# load modules
zmodload zsh/complist
autoload -U compinit && compinit
autoload -U colors && colors
# autoload -U tetris # main attraction of zsh, obviously


# cmp opts
zstyle ':completion:*' menu select # tab opens cmp menu
zstyle ':completion:*' special-dirs true # force . and .. to show in cmp menu
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} ma=0\;33 # colorize cmp menu
zstyle ':completion:*' file-list true # more detailed list
zstyle ':completion:*' squeeze-slashes false # explicit disable to allow /*/ expansion
zstyle ':completion:*' cache-path "${XDG_CACHE_HOME}/zsh/zcompcache"

# main opts
setopt append_history inc_append_history share_history # better history
# on exit, history appends rather than overwrites; history is appended as soon as cmds executed; history shared across sessions
setopt auto_menu menu_complete # autocmp first menu match
setopt autocd # type a dir to cd
setopt auto_param_slash # when a dir is completed, add a / instead of a trailing space
setopt no_case_glob no_case_match # make cmp case insensitive
setopt globdots # include dotfiles
setopt extended_glob # match ~ # ^
setopt interactive_comments # allow comments in shell
unsetopt prompt_sp # don't autoclean blanklines
stty stop undef # disable accidental ctrl s

# Create directories if they don't exist
[ -d "${XDG_STATE_HOME}/zsh" ] || mkdir -p "${XDG_STATE_HOME}/zsh"
[ -d "${XDG_CACHE_HOME}/zsh" ] || mkdir -p "${XDG_CACHE_HOME}/zsh"

# history opts
HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE="${XDG_CACHE_HOME}/zsh_history" # move histfile to cache
HISTCONTROL=ignoreboth # consecutive duplicates & commands starting with space are not saved

# Initialise cache
compinit -d "${XDG_CACHE_HOME}/zsh/zcompdumpcache-${ZSH_VERSION}"


# >>> conda initialize >>>
CONDA_EXE="${HOME}/.local/miniconda3/bin/conda"
__conda_setup="$(${CONDA_EXE} 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "${HOME}/.local/miniconda3/etc/profile.d/conda.sh" ]; then
        . "${HOME}/.local/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="${HOME}/.local/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# fzf setup
source <(fzf --zsh) # allow for fzf history widget

# OH-MY-ZSH
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)
source $OHMYZSH/oh-my-zsh.sh

eval "$(uvx --generate-shell-completion zsh)"
eval "$(starship init zsh)"

