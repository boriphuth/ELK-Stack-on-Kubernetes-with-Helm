eval $(/usr/libexec/path_helper -s)
export JAVA_HOME=$(/usr/libexec/java_home)
# Go development
export GOROOT=$HOME/goroot
export PATH=$PATH:$GOROOT/bin
GO111MODULE=on

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

export setopt PROMPT_SUBST
export PROMPT='#'
