@login

Feature: User logs in and fills in wrong details


Scenario: Log in and complete details
Given i have navigated to the login page
When i submit wrong details
Then an error message is displayed
