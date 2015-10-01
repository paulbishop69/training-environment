Given(/^i have navigated to the login page$/) do
  visit('http://localhost:4567')

  sleep 5
end

When(/^i submit wrong details$/) do
  fill_in('username', :with => 'User123456@onetel.com')
  fill_in('password', :with => 'yellow123')
  click_button('Sign in')

  sleep 5
end

Then(/^an error message is displayed$/) do
  page.has_content?('Unknown User')
end
