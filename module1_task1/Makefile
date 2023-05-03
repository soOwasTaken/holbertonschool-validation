POST_TITLE ?= "New Blog Post"
POST_NAME ?= "new-blog-post"

.PHONY: build clean post

build:
	@hugo

clean:
	@rm -rf dist/*

post:
	@hugo new posts/$(POST_NAME).md -q
	@sed -i 's/title: ./*title: $(POST_TITLE)/' content/posts/$(POST_NAME).md