set -Ux EDITOR "nvim"
set -Ux TERMINAL "kitty"
set -Ux TERM "xterm-kitty"

set -Ux DOTFILES "$HOME/dotfiles"
set -Ux CODE "$HOME/code"

# Define XDG dirs https://specifications.freedesktop.org/basedir-spec/basedir-spec-0.6.html)
set -Ux XDG_CONFIG_HOME "$HOME/.config"
set -Ux XDG_DATA_HOME "$HOME/.local/share"
set -Ux XDG_CACHE_HOME "$HOME/.cache"
# commented out due to podman
# set -Ux XDG_RUNTIME_DIR "/tmp"
set -Ux XDG_STATE_HOME "$HOME/.local/state"
set -Ux GOPATH "$CODE/go"

set -Ux GNUPGHOME "$HOME/.gnupg"
set -Ux GEM_HOME "$XDG_CONFIG_HOME/.gem"
set -Ux ELECTRON_CONFIG_CACHE "$XDG_CONFIG_HOME/.electron"
set -Ux DOCKER_CONFIG "$XDG_CONFIG_HOME/docker"
set -Ux LESSHISTFILE "-"
set -Ux CARGO_HOME "$XDG_DATA_HOME/cargo"
set -Ux FNM_DIR "$XDG_DATA_HOME/fnm"
set -Ux RUSTUP_HOME "$XDG_DATA_HOME/rustup"
set -Ux NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME/npm/npmrc"
set -Ux NPM_CONFIG_DEVDIR "$XDG_CACHE_HOME/node-gyp"
set -Ux CORE_D_DOTFILE "$XDG_RUNTIME_DIR/.eslint_d"
set -Ux HISTFILE "$XDG_STATE_HOME/bash/history"
set -Ux NODE_REPL_HISTORY "$XDG_DATA_HOME/node_repl_history"
set -Ux DOCKER_CONFIG "$XDG_CONFIG_HOME/docker"
set -Ux RUSTUP_HOME "$XDG_DATA_HOME/rustup"
set -Ux DOCKER_CONFIG "$XDG_CONFIG_HOME/docker"
set -Ux STARSHIP_CONFIG $DOTFILES/.config/starship.toml

# gum
set -Ux GUM_FILTER_INDICATOR "→"
set -Ux GUM_FILTER_PROMPT " "

# fzf
set -Ux FZF_DEFAULT_OPTS "\
--reverse \
--border rounded \
--no-info \
--pointer='' \
--marker=' ' \
--ansi \
--color='16,bg+:-1,gutter:-1,prompt:5,pointer:5,marker:6,border:4,label:4,header:italic'"

set -Ux FZF_CTRL_R_OPTS "--border-label=' history ' \
--prompt='  '"

