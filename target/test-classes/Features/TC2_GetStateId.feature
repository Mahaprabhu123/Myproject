Feature: StateId Module API Automation

Scenario: Verify stateId of the application through API
    Given User add header for accessing stateId endpoint
    When User add request body for stateId
    And User send "GET" request for getStateId endpoint
    Then User verify the status code is 200
    Then User verify the getStateId response message matches "Tamil Nadu"