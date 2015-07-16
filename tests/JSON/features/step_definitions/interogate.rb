# $ creates a global variable in order to store the json object for use elsewhere

Given(/^I have entered a title number$/) do
  $structure= getstubjson("DT160760")
end

When(/^the output is returned$/) do
  $structure_hash = JSON.parse($structure)
end

Then(/^i can confirm the data$/) do
  puts $structure_hash['uprns'][0].to_s + " uprns"
  expect($structure_hash['uprns'][0]).to eq(26241363)

#abr validation
  puts $structure_hash['application_reference'] + " application reference"
  if ($structure_hash['application_reference'])==('UPD0019')
  then puts 'correct'
  else puts'fails'
  end
end
