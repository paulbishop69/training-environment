Feature: Check expected infill fields are present in page body


Scenario: Confirm a Forename field is displayed

Given i am viewing the details screen
When i check the screen contains and item of "Forename"
Then i can see a label of "Forename"

Scenario: Confirm a Surname field is displayed

Given i am viewing the details screen
When i check the screen contains and item of "Surname"
Then i can see a label of "Surname"
