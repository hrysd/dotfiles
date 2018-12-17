set -x GOPATH $HOME

switch (uname)
  case Linux
    set -x PATH $HOME/.fzf/bin $PATH
    source ~/.asdf/asdf.fish
  case Darwin
    set -x HOMEBREW_PREFIX $HOME/homebrew
    set -x PATH $HOME/homebrew/bin $HOME/homebrew/share/git-core/contrib/diff-highlight $PATH
    source ~/homebrew/opt/asdf/asdf.fish
end

abbr -a dc='docker-compose'

function src
  ghq list -p | fzf +s -e --tac --reverse | read dir

  cd $dir
end

function _fzf_history
  history | fzf +s -e --tac --reverse | read cmd

  commandline $cmd
end

function fish_user_key_bindings
  bind \cr _fzf_history
end
