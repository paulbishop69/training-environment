Given(/^I have entered title BD(\d+)$/) do |arg1|
  $structure= getstubjson("BD161870")
end

When(/^I output i data for BD(\d+)$/) do |arg1|
  $structure_hash = JSON.parse($structure)
end

Then(/^I am able to confirm the data for BD(\d+) is correct$/) do |arg1|
  puts $structure_hash['title_number'].to_s + " is the title number"
  expect($structure_hash['title_number']).to eq('BD161870')

  puts $structure_hash['dlr'].to_s + " is the DLR"
  expect($structure_hash['dlr']).to eq('Peterborough Office')

  puts $structure_hash['entries'][0]['role_code'].to_s + " is the role code"
  expect($structure_hash['entries'][0]['role_code']).to eq('RDES')

  puts $structure_hash['entries'][1]['full_text'].to_s + " is the full text of entry 2"
  expect($structure_hash['entries'][1]['full_text']).to eq('PROPRIETOR: %SCOTT OAKES% of 17 Kenilworth Road, *Luton* LU1 1DQ.')

  puts $structure_hash['entries'][2]['infills'][0]['text'].to_s + " is the first infill of entry 3"
  expect($structure_hash['entries'][2]['infills'][0]['text']).to eq('01/05/2014')

  puts $structure_hash['entries'][0]['infills'][0]['address']['postcode'].to_s + " is the postcode infill for entry 1"
  expect($structure_hash['entries'][0]['infills'][0]['address']['postcode']).to eq('LU1 1DQ')

  puts $structure_hash['districts'][0].to_s + " is the district"
  expect($structure_hash['districts'][0]).to eq('LUTON')

  puts $structure_hash['geometry']['index']['crs']['properties']['name'].to_s + " are the properties of the index/crs"
  expect($structure_hash['geometry']['index']['crs']['properties']['name']).to eq('urn:ogc:def:crs:EPSG::27700')
end
