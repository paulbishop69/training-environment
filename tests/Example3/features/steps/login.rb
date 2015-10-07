#Generate a new login

Given(/^i have logged in$/) do
  $data = {}
  $data['user_name'] = 'User' + Time.new().to_i.to_s + '@example.org' # Create a random user name
  $data['user_password'] = 'password'

  rest_post_call('http://localhost:4567/add_user', $data)

#Launch webpage

  visit('http://localhost:4567')

#Complete user details with generated login and sign in

  fill_in('username', :with => $data['user_name'])
  fill_in('password', :with => $data['user_password'])
  click_button('Sign in')

#Confirm Log in page has been reached and navigate to details screen
  expect(page.body).to match('Logged in')

  find('html/body/div[2]/ul/li[2]/a').click
  sleep 3
end

#Complete all fields and submit form

When(/^i enter my details$/) do

  page.has_content?('Please enter details')
  fill_in(id='first-name', :with => 'John')
  fill_in(id="second-name", :with => 'Smith')
  fill_in(id="house-number", :with => '34')
  fill_in(id="street", :with => 'Smith Street')
  fill_in(id="city", :with => 'Bath')
  fill_in(id="postcode", :with => 'BA1 1QL')
  find(:xpath,'html/body/div[1]/form/input[8]').click
  check('walking')
  check('cycling')
  check('swimming')
  select('Audi', :from=>'cars')
sleep 4
  click_button('Submit')

end

#Confirm name details are shown on completion screen

Then(/^my details are displayed$/) do
  expect(page).to have_text 'John'
  expect(page).to have_text 'Smith'

end
