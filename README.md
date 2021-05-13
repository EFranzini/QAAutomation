# WIP

# QAAutomation - A basic automation portfolio project

This repository was made as a QA Automation portfolio using **Robot framework**, an excelent framework to automate E2E and API Integration tests.

## Executing the tests

Fist of all, you need to be in the tests folder to execute them.

* The UI tests are located in the folder: ``QAAutomation/Robot/UI/Tests/``
* The API tests are located in the folder: ``QAAutomation/Robot/Integration/Tests/``

### Executing UI tests
After you get to the UI tests folder, you can just execute them by inserting in terminal: ``robot -d <output folder (optional)> -v BROWSER:your_browser_here <specific test case (optional)>``

##### Note: The webdriver used was chrome webdriver version 90, running on Google Chrome.

To install browser driver, you can download and move the file to /bin folder. Your default webdriver folder may vary depending on your OS.

### Executing API tests
After you get to the API tests folder, you can just execute them by inserting in terminal: ``robot -d <output folder (optional)>  <specific test case (optional)>``
