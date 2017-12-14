# Add .rvm/bin to PATH
PATH="$(brew --prefix homebrew/php/php72)/bin:$HOME/.composer/vendor/bin:/usr/local/opt/sqlite/bin:/usr/local/bin:/usr/local/sbin:~/bin:~/.rvm/bin:~/Applications/Sublime\ Text.app/Contents/SharedSupport/bin:$PATH"

# Load nvm
export NVM_DIR="$(brew --prefix nvm)"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
