Given(/^I have navigated to the user details screen$/) do
  visit "http://localhost:4567/form-details"
end

Given(/^i am viewing the details screen$/) do
  expect(page.body).to have_content('Please enter details')
end

When(/^i check the screen contains and item of "([^"]*)"$/) do |arg1|
#expect(page.body).to have_content(arg1)
  expect(find(:xpath, 'html/body/div[1]/form/label[1]')).to have_content(arg1)
end
#
#Then(/^i can see a label of "([^"]*)"$/) do |arg1|
#  pending # Write code here that turns the phrase above into concrete actions
#end












#expect(:xpath 'html/body/div[1]/form/label[1]').has_content?('sjghfsjdkgh')

#expect(:xpath 'html/body/div[1]/form/label[1]').has_content?('Forename')
