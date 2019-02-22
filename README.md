# jira-cli

A command line client for interacting with JIRA.

## Installation

```
git clone ssh://git@scm.bluebeam.com:7999/~zwentz/jira-cli.git
cd jira-cli
make
```

_Note: Please note that this Makefile updates your `~/.zshrc` or `~/.bashrc`._

```
export GOPATH=${HOME}/.go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:/Users/zwentz/.go/bin:${GOROOT}/bin"
eval "$(jira --completion-script-zsh)
```