#Define Variables
BINARY_NAME = awesome-api
LOG_FILE = awesome-api.log
PID_FILE = awesome-api.pid
PORT = 9999


build: ## Compile the source code of the application to a binary
	@go build

run: ## Run the application in background
	@./awesome-api >./awesome-api.log 2>&1 &

stop: ## Stop the application
	@pid=$$(pgrep awesome-api) && \
	if [ -n "$$pid" ]; then \
	    kill $$pid; \
	else \
	    echo "ERROR: 'awesome-api' process not found"; \
	    exit 1; \
	fi

clean: ## Stop the application, Delete the binary
	@pid=$$(pgrep awesome-api) && \
		if [ -n "$$pid" ]; then \
			kill $$pid; \
		else \
			echo "ERROR: 'awesome-api' process not found"; \
			exit 1; \
		fi
	@rm -f $(BINARY_NAME) $(LOG_FILE)

test: ## Run automated tests
	@curl http://localhost:9999
	@curl http://localhost:9999/health

help: ## Show help message
	@grep "##" Makefile | grep -v grep | sed "s/##//"