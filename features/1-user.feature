Feature: 1. Filter feature

Scenario: Signup
    Given I am on create filter page
    When I open on Transports category
    Then I open sub cat Vieglie auto
    Then I open sub cat Audi
    Then I open sub cat Audi A1
    Then I open sub cat Visi
    Then I am on parameters page
    And I set filter parameters

Scenario: SearchFilters
    Given I am on buy extra filters page
    Then I click cancel to move forward
    Then I click on menu button
    Then I am on menu_section page
    Then I click on search filter page
    When I am on search_filters page
    Then I open filter_audi filter
    Then I am on filter page
    Then I click on delete button
    And I am on delete frame page
    Then I click to delete filter