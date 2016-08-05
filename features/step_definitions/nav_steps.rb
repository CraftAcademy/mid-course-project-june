Given(/^I am on the "([^"]*)" page$/) do |page_name|
  visit path(page_name)
end

Then(/^I should be on the "([^"]*)" page$/) do |page_name|
  expect(page.current_path).to eq path(page_name)
end

def path(page_name)
  case page_name
  when "login"
      new_user_session_path
  when "home"
    root_path
  when "Orphanage edit details"
    new_orphanage_path
  end
end
