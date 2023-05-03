# Environment Variables
POST_TITLE ?= "New Blog Post"
POST_NAME ?= "new-blog-post"

.PHONY: build clean post

# Generate the website from the markdown and configuration files
build:
	@hugo

# Clean up the generated website
clean:
	@rm -rf dist/*

# Create a new blog post
post:
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title: .*/title: $(POST_TITLE)/' content/posts/$(POST_NAME).md

# Show help message
help:
	@echo "  build	Generate the website from the markdown and configuration files"
	@echo "  clean	Clean up the generated website"
	@echo "  post	Create a new blog post"
	@echo "  help	Show this help message"
