build: ## builds the file into a binary go file
	make lint
	go build

lint: ## check for potential errors
	golangci-lint run

run: ## runs the api and logs it
	./awesome-api >./awesome-api.log 2>&1 &

stop: ## kills the process with PID number
	pkill awesome-api

clean: ## removes file and log
	rm -f awesome-api awesome-api.log coverage-units.out coverage-integrations.out

test: ## test hitting the endpoint
	make unit-tests
	make integration-tests

unit-tests: ## run unit-tests
	go test -v -short -coverprofile=coverage-units.out

integration-tests: ## run intregrated tests
	go test -v  -coverprofile=coverage-integrations.out


help: ## in case you need help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'