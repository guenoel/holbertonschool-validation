prerequis: ## Prerequis
	@rm -rf /usr/local/go && tar -C /usr/local -xzf go1.19.5.linux-amd64.tar.gz
	@export PATH=$PATH:/usr/local/go/bin
	@go get -u github.com/gorilla/mux
	@curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.50.1

help: ## Show this
	@sed -ne '/@sed/!s/## //p' Makefile

init: ## init
	@go mod init github.com/guenoel/awesome-api

build: ## build project
	@go build

run: ## run project
	@./awesome-api >./awesome.log 2>&1 &

stop: ## kill process pid
	@kill "$(shell pgrep awesome-api)"

clean: ## clean unnecessary files
	@make stop
	@rm -rf awesome-api

test: ## test
	@curl http://localhost:9999
	@curl http://localhost:9999/health