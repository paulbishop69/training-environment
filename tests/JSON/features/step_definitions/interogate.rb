# $ creates a global variable in order to store the json object for use elsewhere

Given(/^I have entered a title number$/) do
  $structure= getstubjson("DT160760")
end

When(/^the output is returned$/) do
  $structure_hash = JSON.parse($structure)
end

Then(/^i can confirm the data$/) do

  puts $structure_hash['title_number'].to_s + " is the title number"
  expect($structure_hash['title_number']).to eq('DT160760')

  puts $structure_hash['dlr'].to_s + " is the dlr"
  expect($structure_hash['dlr']).to eq('Weymouth Office')

  puts $structure_hash['entries'][1]['role_code'].to_s + " is the role code"
  expect($structure_hash['entries'][1]['role_code']).to eq('RSLP')

  puts $structure_hash['uprns'][0].to_s + " uprns"
  expect($structure_hash['uprns'][0]).to eq(26241363)

  puts $structure_hash['migration_errors'][4]['message'].to_s + " is the 5th migration error message"
  expect($structure_hash['migration_errors'][4]['message']).to eq('Investigation code: C - No role code assigned to the register entry')

  puts $structure_hash['entries'][0]['infills'][0]['type'].to_s + " is the entry infill type for entry 1"
  expect($structure_hash['entries'][0]['infills'][0]['type']).to eq('Address')

  puts $structure_hash['districts'][0].to_s + " is the district"
  expect($structure_hash['districts'][0]).to eq('DORSET : WEYMOUTH AND PORTLAND')

  puts $structure_hash['geometry']['index']['geometry']['coordinates'][0][0][0].to_s + " is the first co-ordinate item"
  expect($structure_hash['geometry']['index']['geometry']['coordinates'][0][0][0]).to eq(368002.61)


#abr validation
#  puts $structure_hash['application_reference'] + " application reference"
#  if ($structure_hash['application_reference'])==('UPD0018')
#  then puts 'correct'
#  else puts'fails'
#  end
end
