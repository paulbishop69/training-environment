#Navigate directly to form details page

Given(/^I have navigated to the user details screen$/) do
  visit "http://localhost:4567/form-details"
end

#Confirm that user is on Details screen

When(/^i am viewing the details screen$/) do
  expect(page.body).to have_content('Please enter details')
end

#Check that the expected infill fields are displayed on the page

Then(/^i can see a label of "([^"]*)"$/) do |arg1|
  expect(page.body).to have_content(arg1)
end














#expect(:xpath 'html/body/div[1]/form/label[1]').has_content?('sjghfsjdkgh')

#expect(:xpath 'html/body/div[1]/form/label[1]').has_content?('Forename')
