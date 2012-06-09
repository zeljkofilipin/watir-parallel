Feature: Google Search

  Scenario: I can find Watir home page
    Given I am at google.com page
    When I search Google for Watir
    Then I should see Web Application Testing in Ruby at Google search results
