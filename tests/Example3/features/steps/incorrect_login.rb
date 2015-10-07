#Navigate to login page

Given(/^i have navigated to the login page$/) do
  visit('http://localhost:4567')

  sleep 5
end

#Enter invalid login details
When(/^i submit wrong details$/) do
  fill_in('username', :with => 'User123456@onetel.com')
  fill_in('password', :with => 'yellow123')
  click_button('Sign in')

  sleep 5
end

#Confirm expected error message is displayed
Then(/^an error message is displayed$/) do
  page.has_content?('Unknown User')
end
