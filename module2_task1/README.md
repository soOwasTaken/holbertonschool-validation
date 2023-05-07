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

To stop the running APi, delete the binary, log file run:
make clean
this will stop the API, and remove the binary "awesome-api" and the log file.

### Test

To run automated tests for the API, run:
make test
This will execute a series oif automated tests that make requests to the API and check their responses.

### Help

To see a liust of avaible comlmands and their usage, run:
make help
This will show a list of avaible commands and their usage information.