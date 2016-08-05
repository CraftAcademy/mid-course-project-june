Given(/^the following users exist$/) do |table|
  table.hashes.each do |user|
    FactoryGirl.create(:user, email: user[:email],
                              password: user[:password],
                              password_confirmation: user[:password_confirmation])
  end
end
