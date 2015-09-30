Feature: User logs in and fills in wrong details


Scenario: Log in and complete details
Given i have logged in
When i enter wrong details
Then an error message is displayed
