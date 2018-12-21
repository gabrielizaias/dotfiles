# Add .rvm/bin to PATH
PATH="$(brew --prefix php)/bin:$HOME/.composer/vendor/bin:/usr/local/opt/sqlite/bin:/usr/local/opt/ruby/bin:/usr/local/bin:/usr/local/sbin:$HOME/bin:$HOME/.rvm/bin:$PATH"

# Load nvm
export NVM_DIR="$(brew --prefix nvm)"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
