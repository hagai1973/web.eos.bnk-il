Sure, here is a `README.md` file for your project:

```markdown
# Web EOS BNK-IL Test Automation

This project contains automated tests for the Web EOS BNK-IL application using Robot Framework and the Browser library.

## Prerequisites

- Python 3.12 or later
- pip (Python package installer)

## Installation

1. **Install Python**:
   Download and install Python from the official website: [Python Downloads](https://www.python.org/downloads/)

2. **Install Robot Framework**:
   Open a terminal or command prompt and run the following command:
   ```sh
   pip install robotframework
   ```

3. **Install Browser Library**:
   Run the following command to install the Browser library:
   ```sh
   pip install robotframework-browser
   ```

4. **Initialize Browser Library**:
   After installing the Browser library, run the following command to download the necessary browser binaries:
   ```sh
   rfbrowser init
   ```

## Running Tests

1. **Prepare the Environment**:
   Ensure that all dependencies are installed and the environment is set up correctly.

2. **Execute Tests**:
   Run the tests using the provided batch file. Open a terminal or command prompt and navigate to the project directory, then execute:
   ```sh
   run_tests.bat
   ```

```markdown
## Project Structure

- `resources/keywords/keywords_file.robot`: Contains custom keywords used in the tests.
- `tests/login_tests.robot`: Contains the test cases for the login functionality.
- `run_arguments.txt`: Contains arguments and variables for running the tests.
- `run_tests.bat`: Batch file to execute the tests.
- `resources/keywords/base_page.robot`: Contains general functionality for web testing, such as click, type text, and validation of existing and non-existing web elements.
```

## Additional Information

- **Robot Framework Documentation**: [Robot Framework User Guide](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html)
- **Browser Library Documentation**: [Robot Framework Browser Library](https://marketsquare.github.io/robotframework-browser/)

```

This `README.md` file provides instructions for installing the necessary tools, setting up the environment, and running the tests.