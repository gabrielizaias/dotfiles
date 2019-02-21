# Add .rvm/bin to PATH
PATH="$(brew --prefix php)/bin:$HOME/.composer/vendor/bin:/usr/local/opt/sqlite/bin:/usr/local/opt/ruby/bin:/usr/local/bin:/usr/local/sbin:$HOME/bin:$HOME/.rvm/bin:$PATH"

# Load nvm
export NVM_DIR="$(brew --prefix nvm)"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Fix gpg error
# @see https://tutorials.technology/solved_errors/21-gpg-signing-failed-Inappropriate-ioctl-for-device.html
export GPG_TTY=$(tty)
