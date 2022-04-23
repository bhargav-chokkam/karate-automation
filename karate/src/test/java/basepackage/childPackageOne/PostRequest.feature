Feature: 
  Post Request Feature File

  Background: 
    Given url 'https://jobportalkarate.herokuapp.com'
    * def requestBody =
      """
      {
      "experience": [
      "java"
      ],
      "jobDescription": "qa",
      "jobId": 0,
      "jobTitle": "ana",
      "project": [
      {
      "projectName": "wu",
      "technology": [
        "sel"
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
