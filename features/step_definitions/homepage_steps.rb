When(/^I visit the homepage$/) do
  visit '/'
end

Then(/^I should see (\d+) thumbnail images$/) do |count|
  page.all('.picture').should have(6).items
end
