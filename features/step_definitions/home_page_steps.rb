Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then(/^I should see a button "([^"]*)"$/) do |button|
  expect(page).to have_button button
end

And(/^I click "([^"]*)"$/) do |element|
  click_link_or_button element
end

Then(/^show me the page$/) do
  save_and_open_page
end

And(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in field, with: value
end

Then(/^a new User with user type "([^"]*)" should be created$/) do |arg|
  new_user = User.last
  expect(new_user.user_type).to eq 'orphanage'
end
