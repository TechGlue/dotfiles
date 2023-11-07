# set pip packages to be usable by local user
set -x PATH $HOME/.local/bin:$PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

set TERM xterm-256color

