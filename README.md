# jira-cli

A command line client for interacting with JIRA.

## Installation

```
git clone ssh://git@scm.bluebeam.com:7999/~zwentz/jira-cli.git
cd jira-cli
make
```

_Note: Please note that this Makefile updates your `~/.zshrc` or `~/.bashrc`, see below._

```
export GOPATH=${HOME}/.go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:/Users/zwentz/.go/bin:${GOROOT}/bin"
eval "$(jira --completion-script-zsh)
```

## Logging In

Run `jira login` and enter your password to login and start running commands successfully. 

_Note: The make script tries to do this for you automatically._

## Commands

`jira-cli` is dependent on [Netflix-Skunkworks/go-jira](https://github.com/Netflix-Skunkworks/go-jira).

This dependency comes with a lot of commands out of the box, and you can read more details about those
 commands on their [repo](https://github.com/Netflix-Skunkworks/go-jira).

### jira mine

Returns a list of JIRA tickets that are unresolved and have been currently assigned to you.

`jira mine`

_Sample output:_

```
➜  jira-cli git:(master) jira mine
STU-17949:   Update Atlas Client to add redirect Uris, Post-logout redirect Uris, and extend token lifetime, and add client to QA and Prod-US
ATL-473:     Extend BBID token expiration in all environments
➜  jira-cli git:(master) 
```