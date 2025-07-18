export PATH=/opt/homebrew/bin:$PATH
export CLICOLOR=1
eval "$(starship init zsh)"
bindkey -v
autoload -U compinit
compinit -u

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit
fi

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'
alias ls='lsd'
alias la='ls -la'


eval "$(fnm env --use-on-cd)"


PATH=/Users/mark/.pyenv/shims:/opt/homebrew/bin:/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin:/Users/mark/.local/bin
PATH=$PATH:$HOME/Library/Application\ Support/pypoetry/bin/poetry:/opt/homebrew/bin/dotnet
PATH=$PATH:/Library/Frameworks/Mono.framework/Versions/Current/bin
export PATH="$HOME/.cargo/bin:$PATH"


export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="/usr/local/share/dotnet:$PATH"
export PATH="$HOME/Library/Android/sdk/platform-tools:$HOME/Library/Android/sdk/build-tools/34.0.0:$PATH"
# export PATH="/usr/local/bin/flutter/bin:$PATH:$HOME/.pub-cache/bin"
export ANDROID_HOME=$HOME/Library/Android


eval "$(frum init)"


# go
# export GOROOT="$(brew --prefix golang)/libexec"
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"
alias go=~/.goenv/shims/go
alias ssh='ssh -o ServerAliveInterval=60'

JAVA_HOME="/Library/Java/JavaVirtualMachines/zulu-19.jdk/Contents/Home"
export JAVA_HOME

PATH=$PATH:$JAVA_HOME/bin
export PATH
## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/mark/.dart-cli-completion/zsh-config.zsh ]] && . /Users/mark/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]


# pnpm
export PNPM_HOME="/Users/mark/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mark/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/mark/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mark/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/mark/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
