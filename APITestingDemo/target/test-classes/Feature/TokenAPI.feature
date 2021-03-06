Feature: Check generated token by API

Background:
 * url 'http://restful-booker.herokuapp.com'
 * header Content-Type = 'application/json'
 
Scenario: Verify token is generated by API
Given path '/auth'
And request {"username" : "admin", "password" : "password123"}
When method POST
Then status 200
Then match response == {"token":'#string'}

