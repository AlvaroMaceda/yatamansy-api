Then(/^Print response$/) do
  puts last_response.body
end

Given(/^PENDING$/) do
  pending
end
