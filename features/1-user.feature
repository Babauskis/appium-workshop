Feature: 1. Filter feature

Scenario: Create transports filter
    Given I am on create filter page
    When I open transports params
    Then I submit transports filter

Scenario: Delete transports filter
    Given I close buy filters
    When I open search filters
    Then I open existing filter
    Then I delete filter

Scenario: Create nekustamie filter
    Given I am on create filter page
    When I open nekustamie params
    Then I submit nekustamie filter

Scenario: Delete nekustamie filter
    Given I close buy filters
    When I open search filters
    Then I open existing filter
    Then I delete filter

Scenario: Create vakances filter
    Given I am on create filter page
    When I open vakances params
    Then I submit vakances filter

Scenario: Delete vakances filter
    Given I close buy filters
    When I open search filters
    Then I open existing filter
    Then I delete filter