path=($HOME/.bin /usr/local/bin /usr/local/share/npm/bin $path)

if [[ -e /usr/local/share/chruby ]]; then
  source /usr/local/share/chruby/chruby.sh
  source /usr/local/share/chruby/auto.sh
elif which rbenv > /dev/null; then
  eval "$(rbenv init - --no-rehash)";
fi

if [ -n "$BASH_VERSION" ] || [ -n "$ZSH_VERSION" ]; then
  source /usr/local/share/gem_home/gem_home.sh
fi

path=(.git/safe/../../bin .git/safe/../../bin/stubs $path)
path=(./git/safe/../../node_modules/.bin $path)

export PATH="/usr/local/bin:$PATH"
