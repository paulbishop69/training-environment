Given(/^I have entered title number MS(\d+)$/) do |arg1|
  $structure= getstubjson("MS465614")
end

When(/^the output is returned for MS(\d+)$/) do |arg1|
  $structure_hash = JSON.parse($structure)
end

Then(/^i can confirm the data for MS(\d+) is correct$/) do |arg1|
  puts $structure_hash['title_number'].to_s + " is the title number"
  expect($structure_hash['title_number']).to eq('MS465614')

  puts $structure_hash['dlr'].to_s + " is the dlr"
  expect($structure_hash['dlr']).to eq('Birkenhead Office')

  puts $structure_hash['entries'][4]['language'].to_s + " is the language for entry 5"
  expect($structure_hash['entries'][4]['language']).to eq('en_GB')

  puts $structure_hash['migration_errors'][0]['message_number'].to_s + ' is the first extractor message number'
  expect($structure_hash['migration_errors'][0]['message_number']).to eq('PE1012')

  puts $structure_hash['migration_errors'][0]['message'].to_s + ' is the first extractor message'
  expect($structure_hash['migration_errors'][0]['message']).to eq('Address not deconstructed in Intelligent Register for title')

  puts $structure_hash['entries'][8]['deeds'][0]['description'].to_s + " is the deed type for entry 9"
  expect($structure_hash['entries'][8]['deeds'][0]['description']).to eq('Conveyance')

  puts $structure_hash['entries'][11]['role_code'].to_s + " is the role code for entry 12"
  expect($structure_hash['entries'][11]['role_code']).to eq('DCEA')

  puts $structure_hash['geometry']['map']['type'].to_s + " is the map type"
  expect($structure_hash['geometry']['map']['type']).to eq('FeatureCollection')
end
