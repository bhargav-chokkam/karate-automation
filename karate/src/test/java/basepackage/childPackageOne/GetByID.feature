Feature: 
  Post Request Feature File

  Background: 

  Scenario: 
    Get particular id data

    Given path 'normal/webapi/find'
    And param id =  '1'
    And param jobTitle = 'Ana'
    When method get
    Then status 200
    And print response
