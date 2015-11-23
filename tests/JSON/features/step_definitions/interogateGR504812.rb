Given(/^I have entered title number GR(\d+)$/) do |arg1|
  $structure= getstubjson("GR504812")
end

When(/^the output is returned for GR(\d+)$/) do |arg1|
  $structure_hash = JSON.parse($structure)
end

Then(/^i can confirm the data for GR(\d+) is correct$/) do |arg1|

  puts $structure_hash['title_number'].to_s + " is the title number"
  expect($structure_hash['title_number']).to eq('GR504812')

  puts $structure_hash['tenure'].to_s + " is the tenure"
  expect($structure_hash['tenure']).to eq('Freehold')

  puts $structure_hash['entries'][11]['entry_id'].to_s + " is the entry ID for entry 12"
  expect($structure_hash['entries'][11]['entry_id']).to eq('2006-09-06 11:32:12.828685')

  puts $structure_hash['application_reference'].to_s + " is the application reference"
  expect($structure_hash['application_reference']).to eq('E006DWW')

  puts $structure_hash['migration_errors'][0]['extractor'].to_s + ' is the first extractor'
  expect($structure_hash['migration_errors'][0]['extractor']).to eq('Register Check')

  puts $structure_hash['entries'][15]['sub_register'].to_s + ' is the sub register of the 16th entry'
  expect($structure_hash['entries'][15]['sub_register']).to eq('C')

  puts $structure_hash['edition_date'].to_s + ' is the edition date'
  expect($structure_hash['edition_date']).to eq('2006-09-06')

  puts $structure_hash['entries'][0]['status'].to_s + ' is the status of the 1st sub register entry'
  expect($structure_hash['entries'][0]['status']).to eq('Current')

end
