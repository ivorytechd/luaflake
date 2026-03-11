#!/bin/sh
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo '#!/bin/sh' >/tmp/luaflake
echo "lua \"$SCRIPT_DIR/main.lua\" \"\$@\"" >>/tmp/luaflake

chmod +x /tmp/luaflake
sudo mv /tmp/luaflake /usr/local/bin/luaflake

# for my fellow nixos chads and chadesses or wtf
if ! echo "$PATH" | grep -q "/usr/local/bin"; then
  echo 'export PATH="/usr/local/bin:$PATH"' >>~/.zshrc
  echo 'export PATH="/usr/local/bin:$PATH"' >>~/.bashrc
  echo "added /usr/local/bin to PATH, please restart your terminal before running luaflake or source your .*rc (zsh/bash)"
fi

echo "installed! type luaflake in your flakes directory to summarise your cortisol based on your flakes"
