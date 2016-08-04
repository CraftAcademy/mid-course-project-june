Given(/^I am on the home Page$/) do
  visit root_path
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then(/^I should see a button "([^"]*)"$/) do |button|
  expect(page).to have_button button
end
