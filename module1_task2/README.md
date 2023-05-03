# My Awesome Go-Hugo Website

## Prerequisites

Before building the website, you will need to have the following installed:

- Go-Hugo
- GNU Make

## Lifecycle

### Build

To generate the website from the markdown and configuration files, run:
make build
This will build the website and output it to the `./public` directory.

### Clean

To clean up the generated website, run:
make clean
This will remove the `./public` directory.

### Post

To create a new blog post, set the `POST_TITLE` and `POST_NAME` environment variables and run:
make post
This will create a new blog post with the given title and filename.

## Usage

To build the website, run:
make build

To clean up the website, run:
make clean

To create a new blog post, set the `POST_TITLE` and `POST_NAME` environment variables and run:
make post

To see a list of available targets and their usage, run:
make help
This will show a list of available targets and their usage information.