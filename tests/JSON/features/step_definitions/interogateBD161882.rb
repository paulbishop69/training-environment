Given(/^I have entered title number BD(\d+)$/) do |arg1|
  $structure= getstubjson("BD161882")
end

When(/^the output is returned for BD(\d+)$/) do |arg1|
  $structure_hash = JSON.parse($structure)
end

Then(/^i can confirm the data for BD(\d+) is correct$/) do |arg1|
  puts $structure_hash['title_number'].to_s + " is the title number"
  expect($structure_hash['title_number']).to eq('BD161882')

  puts $structure_hash['class'].to_s + " is the title class"
  expect($structure_hash['class']).to eq('Absolute')

  puts $structure_hash['entries'][1]['template_text'].to_s + " is the template text"
  expect($structure_hash['entries'][1]['template_text']).to eq('PROPRIETOR: *RP*')

  puts $structure_hash['application_reference'].to_s + " is the application reference"
  expect($structure_hash['application_reference']).to eq('MA2785A')

  puts $structure_hash['entries'][6]['infills'][0]['proprietors'][0]['name']['non_private_individual_name'].to_s + " is the name in entry 7"
  expect($structure_hash['entries'][6]['infills'][0]['proprietors'][0]['name']['non_private_individual_name']).to eq('Preferred Mortgages Limited')
  expect($structure_hash['entries'][6]['infills'][0]['proprietors'][1]['name']['non_private_individual_name']).to eq('Preferred Mortgages Limited')

  puts $structure_hash['entries'][3]['sub_register'].to_s + " is the sub register for entry 4"
  expect($structure_hash['entries'][3]['sub_register']).to eq('B')

  puts $structure_hash['edition_date'].to_s + " is the edition date"
  expect($structure_hash['edition_date']).to eq('2014-08-28')

  puts $structure_hash['entries'][6]['status'].to_s + " is the status for entry 7"
  expect($structure_hash['entries'][3]['status']).to eq('Current')
end
