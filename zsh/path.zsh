PATH="$(brew --prefix php)/bin:$HOME/.deno/bin:$HOME/.composer/vendor/bin:/usr/local/opt/sqlite/bin:/usr/local/opt/ruby/bin:/usr/local/bin:/usr/local/sbin:$HOME/bin:$HOME/.rvm/bin:$PATH"

# Load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Fix gpg error
# @see https://tutorials.technology/solved_errors/21-gpg-signing-failed-Inappropriate-ioctl-for-device.html
export GPG_TTY=$(tty)
