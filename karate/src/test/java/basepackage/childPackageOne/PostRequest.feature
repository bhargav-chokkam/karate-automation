Feature: 
  Post Request Feature File

  Background: 
    Given url 'https://jobportalkarate.herokuapp.com'
    * def requestBody =
      """
      {
      "experience": [
      "2"
      ],
      "jobDescription": "QA",
      "jobId": 1,
      "jobTitle": "Ana",
      "project": [
      {
        "projectName": "WU",
        "technology": [
          "JAVA"
        ]
      }
      ]
      }
      """

  Scenario: 
    Post Request Sanity

    Given path '/normal/webapi/add'
    * request requestBody
    When method post
    Then status 201
    * print response

  Scenario: 
    Get All Data

    Given path 'normal/webapi/all'
    When method get
    Then status 200
    * print response

  Scenario: 
    Get particular id data

    Given path 'normal/webapi/find'
    And param id =  '1'
    And param jobTitle = 'Ana'
    When method get
    Then status 200
    And print response
