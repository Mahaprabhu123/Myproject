Feature: Address Module API Automation

Scenario Outline: Verify add user address to the application through API

Given User add header and bearer authentication for accessing address endpoints
When User add request body for add new address "<first_name>","<last_name>","<mobile>","<apartment>","<state>","<city>","<country>","<zipcode>","<address>","<address_type>"
Add User send "POST" request for addUserAddress endpoint 
Then User verify the status code is 200
And User verify the addUserAddress response message matches "Address added successfully"

Examples:
|first_name |last_name |mobile     |apartment  |state  |city  |country |zipcode  |address  |address_type|
|Mahaprabhu |Kandhan   |9095626850 |TVH        |45     |4080  |   101  |600081   |chennai  |Home        |   

  Scenario Outline: Verify update user address to the appication through api
    Given User add header and bearer authorization for accessing address endpoints
    When User add request body for update user address "<address_id>", "<first_name>", "<last_name>", "<mobile>", "<apartment>", "<state>", "<city>", "<country>", "<zipcode>", "<address>" and "<address_type>"
    And User send "PUT" request for updateUserAddress endpoint
    Then User verify the status code is 200
    Then User verify the updateUserAddress response message matches "Address updated successfully"

Examples: 
|first_name |last_name |mobile     |apartment  |state  |city  |country |zipcode  |address  |address_type|
|Mahaprabhu |Kandhan   |9095626850 |TVH        |45     |4080  |   101  |600081   |chennai  |Home        |   


	Scenario Outline: Verify get user address to the appication through api
    Given User add header and bearer authorization for accessing address endpoints
   	#When User add request body for get user address 
    And User send "GET" request for getUserAddress endpoint
    Then User verify the status code is 200
    Then User verify the getUserAddress response message matches "OK"


    Scenario Outline: Verify delete user address to the appication through api
    Given User add header and bearer authorization for accessing address endpoints
   	When User add request body for delete user address 
    And User send "DELETE" request for deleteUserAddress endpoint
    Then User verify the status code is 200
    Then User verify the deleteUserAddress response message matches "Address deleted successfully"
 
 
 
 
 
 