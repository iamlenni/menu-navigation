# Project scope

Project contains Robot Framework test for Q-Factory webpage top menu navigation.

Test will open Q-Factory main page, and then click on the navigation bar menu elements one-by-one, verifying that correct page is opened from each menu item.

## Prerequisites

See requirements.txt for needed installations and dependencies.

## Running tests

To run the tests from the Command line, navigate to the root of the project structure and run command:

```
robot tests/navigation_menu.robot
```

Tests will run by default for the Finnish website https://q-factory.fi/.  
To run the tests for the English site https://q-factory.fi/en/, use LANGUAGE variable. 

Values 'fi' and 'en' are supported:

```
robot --variable LANGUAGE:en tests/navigation_menu.robot
```

## Known issues and improvements for future

- [ ] Improving page verification. Instead of hard-coded 2 seconds wait, wait for a specific element to verify that the correct page has loaded.
- [ ] Clicking and verifying also "English" and "Suomi" buttons