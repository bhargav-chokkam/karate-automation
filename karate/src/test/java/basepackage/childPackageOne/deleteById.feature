Feature: 
  Post Request Feature File

  Background: 
    Given url 'https://jobportalkarate.herokuapp.com'

  Scenario: 
    Delete particular id data

    Given path 'webapi/remove/'
    And path '1'
    When method delete
    Then status 200
    And print response
