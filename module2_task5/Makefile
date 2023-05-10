# Define variables
BINARY_NAME = awesome-api
LOG_FILE = awesome-api.log
PID_FILE = awesome-api.pid
PORT = 9999
POST_TITLE ?= "New Blog Post"
POST_NAME ?= "new-blog-post"

# Golang targets
go-build: ## Compile the source code of the Go application to a binary
	@go build

run: ## Run the Go application in background
	@./awesome-api >./awesome-api.log 2>&1 &

stop: ## Stop the Go application
	@pid=$$(pgrep $(BINARY_NAME)); \
	if [ -n "$$pid" ]; then \
	    kill $$pid; \
	else \
	    echo "WARNING: '$(BINARY_NAME)' process not found"; \
	fi
	@exit 0

go-clean: stop ## Stop the Go application, Delete the binary
	@rm -f $(BINARY_NAME) $(LOG_FILE)
	@rm -f coverage-integrations.out coverage-units.out

go-test: unit-tests integration-tests ## Run automated tests for Go

go-lint: ## Lint the Go program using golangci-lint
	@golangci-lint run >/dev/null 2>&1 && echo "OK" || (echo "ERROR" && exit 1)

integration-tests: ## Run integration tests for Go
	@go test -v -tags=integration -coverprofile=coverage-integrations.out ./...

unit-tests: ## Execute the Golang unit tests
	@go test -v -short -coverprofile=coverage-units.out && chmod u+x coverage-units.out
	@go tool cover -func=coverage-units.out

# Hugo targets
hugo-build: check ## Generate the website from the markdown and configuration files using Hugo
	@hugo

hugo-clean: ## Clean up the generated website from Hugo
	@rm -rf dist/*

post: ## Create a new blog post using Hugo
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title: .*/title: $(POST_TITLE)/' content/posts/$(POST_NAME).md

check: ## Check markdown files for dead links and linting issues using Hugo
	@markdownlint content/posts
	@find content/posts -name '*.md' -exec markdown-link-check {} \;

validate: ## Validate the generated HTML with the W3C standards using Hugo
	-@python3 w3c_validator.py ./dist/index.html

# Intermediate targets
build: go-build hugo-build ## Compile the source code of the Go application and generate the website from the markdown and configuration files

clean: go-clean hugo-clean ## Clean up the Go application and the generated website

test: go-test validate ## Run automated tests for Go

lint: go-lint check ## Lint the Go program and check the markdown files for dead links and linting issues using Hugo

help: ## Show help message
	@grep "##" Makefile | grep -v grep | sed "s/##//"
