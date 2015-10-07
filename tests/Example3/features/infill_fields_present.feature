Feature: Expected infill fields are present in page body

Background:
Given I have navigated to the user details screen

Scenario: Confirm a Forename field is displayed

Given i am viewing the details screen
When i check the screen contains and item of "Forename"
Then i can see a label of "Forename"

Scenario: Confirm a Surname field is displayed

Given i am viewing the details screen
When i check the screen contains and item of "Surname"
Then i can see a label of "Surname"

Scenario: Confirm a Street field is displayed

Given i am viewing the details screen
When i check the screen contains and item of "Street"
Then i can see a label of "Street"

Scenario: Confirm a City field is displayed

Given i am viewing the details screen
When i check the screen contains and item of "City"
Then i can see a label of "City"

Scenario: Confirm a Post Code field is displayed

Given i am viewing the details screen
When i check the screen contains and item of "Post Code"
Then i can see a label of "Post Code"

Scenario: Confirm a House Number field is displayed

Given i am viewing the details screen
When i check the screen contains and item of "House Number"
Then i can see a label of "House Number"
