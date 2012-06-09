When /^I search Bing for (.*)$/ do |term|
  @browser.text_field(name: "q").set term
  @browser.button(id: "sb_form_go").click
end

Then /^I should see (.*) at Bing search results$/ do |term|
  @browser.strong(text: term).should exist
end
