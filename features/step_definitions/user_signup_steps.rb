Given(/^the following users exist$/) do |table|
  table.hashes.each do |user|
    FactoryGirl.create(:user, email: user[:email],
                              password: user[:password],
                              password_confirmation: user[:password_confirmation])
  end
end

Given(/^I am on the User registration page$/) do
  visit new_user_registration_path
end
