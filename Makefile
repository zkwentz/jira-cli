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
	@echo "${GREEN}jira-cli installed and configured, login to jira${NC}"
	jira login