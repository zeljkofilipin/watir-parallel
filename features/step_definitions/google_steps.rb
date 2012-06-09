Given /^I am at (.*) page$/ do |site|
  @browser.goto site
end

When /^I search Google for (.*)$/ do |term|
  @browser.text_field(name: "q").set term
  @browser.button(id: "gbqfb").click
end

Then /^I should see (.*) at Google search results$/ do |term|
  @browser.em(text: term).when_present.should exist
end
