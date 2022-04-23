Feature: 
  Post Request Feature File

  Background: 
    Given url 'https://jobportalkarate.herokuapp.com'
    * def requestBody = read('classpath:resourcesPackage/postRequest.json')

  Scenario: 
    Post Request Sanity

    Given path '/normal/webapi/add'
    * request requestBody
    When method post
    Then status 201
    * print response
