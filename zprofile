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

export PATH=/Users/jatinbhandari-bell/Library/Android/sdk/platform-tools:$PATH
export ANDROID_HOME=/Users/jatinbhandari-bell/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_151.jdk/Contents/Home"
export PATH=$JAVA_HOME/bin:$PATH
export PATH="/usr/local/bin:$PATH"
