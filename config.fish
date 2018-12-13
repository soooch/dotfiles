set -g -x PATH /usr/local/bin /usr/sbin $PATH
set -g -x ANDROID_HOME /Users/suchirkavi/Library/Android/sdk
set -g -x PATH $PATH $ANDROID_HOME/tools $ANDROID_HOME/platform-tools
set -g -x LC3 /Users/suchirkavi/Code/Class/LC3
set -g -x PATH $PATH $LC3

# Paths to your tackle
set tacklebox_path ~/.tackle ~/.tacklebox

# Theme
#set tacklebox_theme entropy

# Which modules would you like to load? (modules can be found in ~/.tackle/modules/*)
# Custom modules may be added to ~/.tacklebox/modules/
# Example format: set tacklebox_modules virtualfish virtualhooks

# Which plugins would you like to enable? (plugins can be found in ~/.tackle/plugins/*)
# Custom plugins may be added to ~/.tacklebox/plugins/
# Example format: set tacklebox_plugins python extract

# Load Tacklebox configuration
. ~/.tacklebox/tacklebox.fish
eval (python -m virtualfish)

# load hn in a virtenv
function myfunc --on-event virtualenv_did_activate:haxor-news
    haxor-news
end
