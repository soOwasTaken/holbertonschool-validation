POST_TITLE ?= "New Blog Post"
POST_NAME ?= "new-blog-post"


build: check ## Generate the website from the markdown and configuration files
	@hugo

clean: ## Clean up the generated website
	@rm -rf dist/*

post: ## Create a new blog post
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title: .*/title: $(POST_TITLE)/' content/posts/$(POST_NAME).md

check: ## Check markdown files for dead links and linting issues
	@markdownlint content/posts
	@find content/posts -name '*.md' -exec markdown-link-check {} \;

validate: ## Validate the generated HTML with the W3C standards
	-@python3 /opt/W3C-Validator/w3c_validator.py ./dist/index.html

help: ## Show help message
	@grep "##" Makefile | grep -v grep | sed "s/##//"