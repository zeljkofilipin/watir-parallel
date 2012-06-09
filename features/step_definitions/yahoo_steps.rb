When /^I search Yahoo for (.*)$/ do |term|
  @browser.text_field(name: "p").set term
  @browser.button(id: "search-submit").click
end

Then /^I should see (.*) at Yahoo search results$/ do |term|
  @browser.b(text: term).should exist
end
