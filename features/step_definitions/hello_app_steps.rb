When(/^I create a recipe with name 'patata'$/) do
  visit '/recipes'
end

Then(/^I should get ok$/) do
  expect(page).to have_content("Hello Cucumber")
end
