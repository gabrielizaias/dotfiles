# take this repo and copy it to somewhere else minus the .git stuff.
function gitexport() {
  mkdir -p "$1"
  git archive master | tar -x -C "$1"
}

# generate .gitignore automatically using gitignore.io
function gi() {
  curl -s https://www.gitignore.io/api/"$@" ;
}
