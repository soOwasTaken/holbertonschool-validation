#Define Variables
BINARY_NAME = awesome-api
LOG_FILE = awesome-api.log
PID_FILE = awesome-api.pid
PORT = 9999


build: lint ## Compile the source code of the application to a binary
	@go build

run: ## Run the application in background
	@./awesome-api >./awesome-api.log 2>&1 &

stop: ## Stop the application
	@pid=$$(pgrep $(BINARY_NAME)); \
	if [ -n "$$pid" ]; then \
	    kill $$pid; \
	else \
	    echo "WARNING: '$(BINARY_NAME)' process not found"; \
	fi
	@exit 0

clean: stop ## Stop the application, Delete the binary
	@rm -f $(BINARY_NAME) $(LOG_FILE)
	@rm -f coverage-integrations.out coverage-units.out

test: unit-tests integration-tests ## Run automated tests

lint: ## lint the program using golangci-lint
	@golangci-lint run >/dev/null 2>&1 && echo "OK" || (echo "ERROR" && exit 1)


integration-tests: ## Run integration tests
	@go test -v -tags=integration -coverprofile=coverage-integrations.out ./...
	
unit-tests: ## Execute the Golang unit tests
	@go test -v -short -coverprofile=coverage-units.out && chmod u+x coverage-units.out
	@go tool cover -func=coverage-units.out

help: ## Show help message
	@grep "##" Makefile | grep -v grep | sed "s/##//"