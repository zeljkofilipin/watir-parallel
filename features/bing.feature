Feature: Bing Search

  Scenario: I can find Watir home page
    Given I am at bing.com page
    When I search Bing for Watir
    Then I should see Web Application Testing in Ruby at Bing search results
