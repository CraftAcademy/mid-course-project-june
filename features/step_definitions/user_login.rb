Then(/^I should be on the login page$/) do
  expect(page.current_path).to eq new_user_session_path
end
