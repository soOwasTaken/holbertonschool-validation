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

test: ## Run automated tests
	@curl http://localhost:9999
	@curl http://localhost:9999/health

lint: ## lint the program using golangci-lint
	@golangci-lint run >/dev/null 2>&1 && echo "OK" || echo "ERROR"

help: ## Show help message
	@grep "##" Makefile | grep -v grep | sed "s/##//"