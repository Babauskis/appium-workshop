Feature: 1. Filter feature

Scenario: Signup
    Given I am on create filter page
    When I open filter params
    Then I submit params filter

Scenario: Validate_screen
    Then I close buy filters screen
    When I am validating screen
    And I verify on screen keyboard

Scenario: Validate_settings_screen
    Then I open settings page