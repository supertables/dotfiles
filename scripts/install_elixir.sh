#!/bin/bash

if command -v elixir &> /dev/null; then
    exit
fi

sudo apt-get install -y elixir
