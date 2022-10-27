Feature: CityId Module API Automation

Scenario: Verify cityId of the application through Api
Given User add header for accessing cityId endpoint
    When User add request body for cityId "<state_id>"
    And User send "POST" request for getCityId endpoint
    Then User verify the status code is 200
    Then User verify the getStateId response message matches "Yercaud"
    
 Examples:   
 |state_id  |
 |   35     |