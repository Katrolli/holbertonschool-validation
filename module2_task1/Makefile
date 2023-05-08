build: ## builds the file into a binary go file
	make lint
	go build

lint:
	golangci-lint run

run: ## runs the api and logs it
	./awesome-api >./awesome-api.log 2>&1 &

stop: ## kills the process with PID number
	pkill awesome-api

clean: ## removes file and log
	rm -f awesome-api awesome-api.log

test: ## test hitting the endpoint
	curl http://localhost:9999
	curl http://localhost:9999/health

help: ## in case you need help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'