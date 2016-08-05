Given(/^I am on the "([^"]*)" page$/) do |pagename|
  visit path(pagename)
end

Then(/^I should be on the "([^"]*)" page$/) do |pagename|
  expect(page.current_path).to eq path(pagename)
end

def path(pagename)
  case pagename
  when "login"
      new_user_session_path
  when "home"
    root_path
  when "Orphanage edit details"
    new_orphanage_path
  end
end
