# My Awesome API

## Prerequisites

Before building and running the API, you will need to have the following installed:

- Go 1.15 or higher
- Node.js 14 or higher with npm 7 or higher


## Lifecycle

### Build

To compile the source code of the API into a binary named awesome-api, run:
make build
This will compile the source code and output the binary to the current directory.
### Clean

To clean up the generated website, run:
make clean
This will remove the `./public` directory.

### Post

To create a new blog post, set the `POST_TITLE` and `POST_NAME` environment variables and run:
make post
This will create a new blog post with the given title and filename.

### Check
succeed by default, and fail when presented with a dead link or a badly written
run:
make check

### Validate
succeed by default and should print the result on the stdout:
make validate

## Usage

To build the website, run:
make build

To clean up the website, run:
make clean

To create a new blog post, set the `POST_TITLE` and `POST_NAME` environment variables and run:
make post

To see a list of available commands and their usage, run:
make help
This will show a list of available commands and their usage information.