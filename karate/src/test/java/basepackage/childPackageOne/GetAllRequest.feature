Feature: 
  Post Request Feature File

  Background: 
    Given url 'https://jobportalkarate.herokuapp.com'

  Scenario: 
    Get All Data

    Given path 'normal/webapi/all'
    When method get
    Then status 200
    * print response
    * def projectSchema =
      """
      {
      "projectName": '#string',
      "technology": '#[] #string'
      }
      """
    * def mainSchema =
      """
      {
          "jobId": '#number',
          "jobTitle": '#string',
          "jobDescription": '#string',
          "experience": '#[] #string',
          "project": '#[]##(projectSchema)'
      }
      """
    * def finalSchema =
      """
      '#[] ##(mainSchema)'
      """
    * match response == finalSchema
