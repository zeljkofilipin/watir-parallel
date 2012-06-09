Feature: Yahoo Search

  Scenario: I can find Watir home page
    Given I am at yahoo.com page
    When I search Yahoo for Watir
    Then I should see Web Application Testing in Ruby at Yahoo search results
