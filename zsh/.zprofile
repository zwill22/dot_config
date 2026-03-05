#!/bin/sh

# default programs
export EDITOR="nvim"
export DISPLAY=:0 # useful for some scripts

# history files
export LESSHISTFILE="${XDG_CACHE_HOME}/less_history"
export PYTHON_HISTORY="${XDG_DATA_HOME}/python/history"

# PNPM install directory
export PNPM_HOME="${XDG_DATA_HOME}/pnpm/bin"

# add scripts to path
export PATH="${XDG_CONFIG_HOME}/scripts:${PATH}"
export PATH="${XDG_DATA_HOME}/cargo/bin:${PATH}" 
export PATH="${PNPM_HOME}:${PATH}"

# moving other files and some other vars
export AWS_SHARED_CREDENTIALS_FILE="${XDG_CONFIG_HOME}/aws/credentials"
export AWS_CONFIG_FILE="${XDG_CONFIG_HOME}/aws/config"
export BASH_COMPLETION_USER_FILE="${XDG_CONFIG_HOME}/bash-completion/bash_completion"
export CONDARC="${XDG_CONFIG_HOME}/conda/condarc"
export CONDA_PREFIX="${XDG_CONFIG_HOME}/conda"
export CONDA_ENVS_PATH="${XDG_DATA_HOME}/conda/envs"
export CONDA_PKGS_DIRS="${XDG_CACHE_HOME}/conda/pkgs"
export CARGO_HOME="${XDG_DATA_HOME}/cargo"
export DISCORD_USER_DATA_DIR="${XDG_DATA_HOME}/discord"
export DOCKER_CONFIG="${XDG_CONFIG_HOME}/docker"
export GOPATH="${XDG_DATA_HOME}/go"
export GOBIN="${GOPATH}/bin"
export GOMODCACHE="${XDG_CACHE_HOME}/go/mod"
export GRADLE_USER_HOME="${XDG_DATA_HOME}/gradle"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="${XDG_CONFIG_HOME}/java"
export _JAVA_AWT_WM_NONREPARENTING=1
export JUPYTER_CONFIG_DIR="${XDG_CONFIG_HOME}/jupyter"
export JUPYTER_PLATFORM_DIRS="1"
export NODE_REPL_HISTORY="${XDG_DATA_HOME}/node_repl_history"
export NPM_CONFIG_USERCONFIG=${XDG_CONFIG_HOME}/npm/npmrc
export NUGET_PACKAGES="${XDG_CACHE_HOME}/NuGetPackages"
export OHMYZSH="${XDG_DATA_HOME}/oh-my-zsh"
export PSQLRC="${XDG_CONFIG_HOME}/pg/psqlrc"
export PSQL_HISTORY="${XDG_STATE_HOME}/psql_history"
export PGPASSFILE="${XDG_CONFIG_HOME}/pg/pgpass"
export PGSERVICEFILE="${XDG_CONFIG_HOME}/pg/pg_service.conf"
export PYTHONSTARTUP="${XDG_CONFIG_HOME}/python/pythonrc"
export PYTHONPYCACHEPREFIX="${XDG_CACHE_HOME}/python"
export PYTHONUSERBASE="${XDG_DATA_HOME}/python"
export PYTHON_EGG_CACHE="${XDG_CACHE_HOME}/python-eggs"
export RUFF_CACHE_DIR="${XDG_CACHE_HOME}/ruff"
export RUSTUP_HOME="${XDG_DATA_HOME}/rustup"
export STARSHIP_CONFIG="${XDG_CONFIG_HOME}/starship.toml"
export STARSHIP_CACHE="${XDG_CACHE_HOME}/starship"
export WORKON_HOME="${XDG_DATA_HOME}/virtualenvs"
export VSCODE_PORTABLE="${XDG_DATA_HOME}/vscode"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"

export FZF_DEFAULT_OPTS="--style minimal --color 16 --layout=reverse --height 30% --preview='bat -p --color=always {}'"
export FZF_CTRL_R_OPTS="--style minimal --color 16 --info inline --no-sort --no-preview" # separate opts for history widget
export MANPAGER="less -R --use-color -Dd+r -Du+b" # colored man pages

# colored less + termcap vars
export LESS="R --use-color -Dd+r -Du+b"
export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"
export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"
export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"
export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"

