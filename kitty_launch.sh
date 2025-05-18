#!/bin/bash

CONFIG_DIR="$HOME/.config/kitty"
OS=$(uname)

if [[ "$OS" == "Darwin" ]]; then
  kitty --config "$CONFIG_DIR/darwin.conf"
else
  kitty --config "$CONFIG_DIR/linux.conf"
fi
