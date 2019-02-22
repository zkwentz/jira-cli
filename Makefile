GREEN=\033[0;32m
NC=\033[0m

all: 
	@echo "${GREEN}Installing go...${NC}"
	brew install go
	@echo "${GREEN}Setting up go install at ~/.go${NC}"
	mkdir -p ~/.go
	export GOPATH="${HOME}/.go"
	export GOROOT="$(brew --prefix golang)/libexec"
	export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
	@echo "${GREEN}Installing go-jira..${NC}"
	go get gopkg.in/Netflix-Skunkworks/go-jira.v1/cmd/jira
	@echo "${GREEN}Configuring jira-cli..${NC}"
	cp ./config.yml ~/.jira.d
	@echo "${GREEN}Setting \044GOPATH${NC}"
	echo 'export GOPATH=\044{HOME}/.go' >> ~/.zshrc
	echo 'export GOPATH=\044{HOME}/.go' >> ~/.bashrc
	@echo "${GREEN}Setting \044GOROOT${NC}"
	echo 'export GOROOT="\044(brew --prefix golang)/libexec"' >> ~/.zshrc
	echo 'export GOROOT="\044(brew --prefix golang)/libexec"' >> ~/.bashrc
	@echo "${GREEN}Updating \044PATH to include \044GOPATH${NC}"
	echo 'export PATH="\044PATH:${GOPATH}/bin:\044{GOROOT}/bin"' >> ~/.zshrc
	echo 'export PATH="\044PATH:${GOPATH}/bin:\044{GOROOT}/bin"' >> ~/.bashrc
	@echo "${GREEN}Adding bash completion script to ~/.bashrc${NC}"
	echo 'eval "\044(jira --completion-script-bash)"' >> ~/.bashrc
	@echo "${GREEN}Adding bash completion script to ~/.zshrc${NC}"
	echo 'eval "\044(jira --completion-script-zsh)"' >> ~/.zshrc
	@echo "${GREEN}jira-cli installed and configured, login to jira${NC}"
	jira login