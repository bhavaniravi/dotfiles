ZSH_DISABLE_COMPFIX=true
export PATH=${PATH}:"/Users/bhavaniravi/bhava/projects/airflow:/Users/bhavaniravi/.gem/ruby/2.6.0/bin"
export TERM=xterm-256color
export FZF_BASE=/usr/local/bin/fzf
# eval "$(pyenv init -)"
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

function gpac() {
    git add .
    git commit -a -m "$1"
    git push
}

pyapp() {
	mkdir app
	touch .gitignore
	touch README.md
	touch main.py
}

flaskapp() {
	mkdir $1
	cd $1
	python3 -m venv venv
	source venv/bin/activate
	pip install flask
	touch hello.py
	echo "
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return '<p>Hello, World!</p>'


@app.route('/user/<username>')
def show_user_profile(username):
    # show the user profile for that user
    return f'User {escape(username)}'

@app.route('/post/<int:post_id>')
def show_post(post_id):
    # show the post with the given id, the id is an integer
    return f'Post {post_id}'

if __name__ == '__main__':
	app.run(port=8000, debug=True)
" > hello.py
}


mkcd () {
  mkdir "$1"
  cd "$1"
}

750save(){
	git add . && git commit -m "add new entry" && git push
}

# if [ -n "$VIRTUAL_ENV" ]; then
#	source $VIRTUAL_ENV/bin/activate;
#fi

#if [[ -n "$TMUX" ]]; then
#	tmux set-environment VIRTUAL_ENV $VIRTUAL_ENV
#fi



# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
alias diff="colordiff"
alias rf="rm -rf"
alias tf="terraform"
alias k="kubectl"
#alias mk="minikube kubectl"
#alias ngrok="/Users/bhavaniravi/Downloads/ngrok"
alias td='todo.sh'

# Path to your oh-my-zsh installation.
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
export ZSH="/Users/bhavaniravi/.oh-my-zsh"
export PATH=$PATH:"/usr/local/bin/python3.8"
export PATH=$PATH:"/Users/bhavaniravi/Library/Python/3.8/bin/"
#alias python=python3
alias pip=pip3
export LC_ALL=en_US.UTF-8
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git 
		 zsh-autosuggestions 
		 fzf
		 zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH="/usr/local/opt/helm@2/bin:$PATH"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
#[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)
#[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/bhavaniravi/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/bhavaniravi/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/bhavaniravi/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/bhavaniravi/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"

# START: Added by Airflow Breeze autocomplete setup
#autoload compinit && compinit
#autoload bashcompinit && bashcompinit
#source ~/.bash_completion.d/breeze-complete
# END: Added by Airflow Breeze autocomplete setup
