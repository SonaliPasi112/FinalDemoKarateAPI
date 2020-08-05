Feature: Verify countries returned by API

Background:
 * url 'http://restcountries.eu'
 
Scenario: Get list of all the countries and total number of countries is 250
Given path '/rest/v2/all'
When method get
Then status 200
* def len = response.length
Then print len
Then assert response.length == 250
 
Scenario: Get details of country by Capital name kabul and verify name , capital and region
Given path 'rest/v2/capital/kabul'
When method get
Then status 200
And def myResponse = response
Then match each myResponse contains {"name":"Afghanistan"}
Then match each myResponse contains {"capital":"Kabul"}
Then match each myResponse contains {"region":"Asia"}
