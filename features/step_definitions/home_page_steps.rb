Given(/^I am on the home page$/) do
  visit root_path
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then(/^I should see a button "([^"]*)"$/) do |button|
  expect(page).to have_button button
end


Then(/^I should be on the Orphanage edit details page$/) do
  expect(page.current_path).to eq new_orphanage_path
end

And(/^I click "([^"]*)"$/) do |element|
  click_link_or_button element
end

Then(/^show me the page$/) do
  save_and_open_page
end

Then(/^I should be on the User registration page$/) do
  expect(page.current_path).to eq new_user_path
end

And(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in field, with: value
end