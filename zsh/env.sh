
export PATH="$HOME/.rvm/gems/ruby-2.4.0/bin:$PATH:$HOME/bin:/usr/local/bin:$HOME/.rvm/bin:./node_modules/.bin:$HOME/.cargo/bin"

# As suggested to make Yeoman work in
# https://github.com/creationix/nvm/issues/586#issuecomment-68220064.
# XXX Commented as was being very slow
# export NODE_PATH=$NODE_PATH:"$(npm root -g)"

export EDITOR="vim"
export VISUAL="vim"
export PAGER="less -K"

# Let git find repos split across filesystems.
export GIT_DISCOVERY_ACROSS_FILESYSTEM=1

export DROP="$HOME/Dropbox"

# Set history file depending on if zsh or bash (although bash file will be used
# if in anything other than zsh; doesn't happen currently and don't really care
# about).
if [ -n "$ZSH_VERSION" ]; then
    export HISTFILE="$DROP/.zsh_history"
else
    export HISTFILE="$DROP/.bash_history"
fi

# Effectively store unlimited history.
export HISTSIZE=999999999
export SAVEHIST=$HISTSIZE

export PROJECTS="$HOME/projects"
export ALCES_PROJECTS="$PROJECTS/alces"
export OTHER_PROJECTS="$PROJECTS/other"

export GITHUB_USER='bobwhitelock'

# Required for Karma to work when Chromium is installed but Chrome isn't.
export CHROME_BIN=chromium

# Set these AWS key variables if the functions exist yet, it doesn't matter if
# they don't though.
export AWS_ACCESS_KEY_ID=$(aws_access_key 2> /dev/null)
export AWS_SECRET_ACCESS_KEY=$(aws_secret_key 2> /dev/null)

export DOMAIN_VARS_FILE=/tmp/domain-vars
cached-domain-vars 2> /dev/null

export ZSH_LIB="$ZSH_DIR/lib"

export PYENV_ROOT="$HOME/repos/pyenv"

# See http://vim.wikia.com/wiki/Using_vim_as_a_man-page_viewer_under_Unix.
export MANPAGER="/bin/sh -c \"unset MANPAGER;col -b -x | \
    vim -R -c 'set ft=man nomod nolist' -c 'map q :q<CR>' \
    -c 'nmap K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' -\""
