Feature: 
  This Feature is used to create a record and this is can be called from another feature file.

  Background: 
    Given url 'https://jobportalkarate.herokuapp.com/'
    * def requestBody =
      """
      {
          "jobId": '#(jobIdNum)',
          "jobTitle": "Software Engg",
          "jobDescription": "To develop andriod application",
          "experience": [
              "Google",
              "Apple",
              "Mobile Iron"
          ],
          "project": [
              {
                  "projectName": "Movie App",
                  "technology": [
                      "Kotlin",
                      "SQL Lite",
                      "Gradle"
                  ]
              }
          ]
      }
      """

  Scenario: 
    This scenario will create a record

    Given path 'normal/webapi/add'
    * def jobIdNum = 123    
    * request {
          "jobId": '#(jobIdNum)',
          "jobTitle": "Software Engg",
          "jobDescription": "To develop andriod application",
          "experience": [
              "Google",
              "Apple",
              "Mobile Iron"
          ],
          "project": [
              {
                  "projectName": "Movie App",
                  "technology": [
                      "Kotlin",
                      "SQL Lite",
                      "Gradle"
                  ]
              }
          ]
      }
      
    When method post
    Then print request
    * status 201
    * print response

    
    
    
    