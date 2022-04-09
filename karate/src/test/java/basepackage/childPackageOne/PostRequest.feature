Feature: 
  This Feature is used to create a record and this is can be called from another feature file.

  Background: 
    Given url 'https://jobportalkarate.herokuapp.com/'
    

  Scenario: 
    This scenario will create a record

    Given path 'normal/webapi/add'
    * def jobIdNum = 123 
    * print jobIdNum