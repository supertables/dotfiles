#!/bin/bash

if command -v erl &> /dev/null; then
    exit
fi

if command -v elixir &> /dev/null; then
    exit
fi

# install erlang
sudo apt-get install -y erlang

# install kiex (elixir version manager)
curl -sSL https://raw.githubusercontent.com/taylor/kiex/master/install | bash -s
echo "test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"" >> ~/.bashrc
. ~/.bashrc
kiex install 1.15 && kiex use 1.15