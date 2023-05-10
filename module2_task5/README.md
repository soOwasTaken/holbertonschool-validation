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

### Run

To run the API in the background and write logs to a file named awesome-api.log, run:
make run
This will start the API

### Stop

To stop the running API, run:
make stop
This will stop the API by sending a SIGTERM signal to the process.

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

### Test

To run automated tests for the API, run:
make test
This will execute a series oif automated tests that make requests to the API and check their responses.

### Lint

To run lint to your code :
make lint
This will execute golangci-lint to check your code.

### Validate
succeed by default and should print the result on the stdout:
make validate

### integration-tests:
to run integration tests run:
make integration-tests
this will run integration tests

### Unit-tests

To run unit-test :
make unit-tests
this will execute Golang unit tests.

### Help

To see a liust of avaible comlmands and their usage, run:
make help
This will show a list of avaible commands and their usage information.
