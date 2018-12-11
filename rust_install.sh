#!/usr/bin/env bash

curl https://sh.rustup.rs -sSf | sh

source ~/.bashrc

bash -c "rustup component add rustfmt"
