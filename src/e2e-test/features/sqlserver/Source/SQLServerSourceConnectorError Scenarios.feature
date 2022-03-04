@SQLServer_Source
Feature: Verify SQLServer Plugin Error Scenarios

  @SQLServer_Source
  Scenario Outline:Verify SQLServer Source properties validation errors for mandatory fields
    Given Open Datafusion Project to configure pipeline
    When  Source is SQLServer
    Then  Open the SQLServer Properties
    Then  Enter the SQLServer Source Properties with blank property "<property>"
    Then  Validate mandatory property error for "<property>"
    Examples:
      | property      |
      | referenceName |
      | database      |
      | importQuery   |


  @SQLServer_Source
  Scenario: Verify Reference Name field validation error for invalid test data
    Given Open Datafusion Project to configure pipeline
    When Source is SQLServer
    Then Open the SQLServer Properties
    Then Enter SQLServer property jdbcDriverName "sqlserverJdbcDriverName"
    Then Enter SQLServer property reference name with Invalid test data "sqlserverInvalidReferenceName"
    Then Enter the SQlServer property database "sqlserverDataBase"
    Then Enter the SQlServer property importQuery "sqlserverQuery"
    Then Validate referenceName field error


  @SQLServer_Source
  Scenario:Verify the validation errors for blank Bounding Query
    Given Open Datafusion Project to configure pipeline
    When Source is SQLServer
    Then Open the SQLServer Properties
    Then Enter SQLServer property jdbcDriverName "sqlserverJdbcDriverName"
    Then Enter SQLServer property host "sqlserverLocalHost"
    Then Enter SQLServer property port "sqlserverPort"
    Then Enter SQLServer property Authentication type
    Then Enter SQLServer property reference name
    Then Enter the SQlServer property database "sqlserverDataBase"
    Then Enter the SQlServer property importQuery "sqlserverImportQuery1"
    Then Enter the SQLServer property splitByFieldName "sqlserverSplitByFieldName"
    Then Enter the SQLServer property numberOfSplitsToGenerate "sqlserverNoOfSplitsToGenerate"
    Then Validate Bounding Query field error


  @SQLServer_Source
  Scenario:Verify the validation error for blank username field when password is given
    Given Open Datafusion Project to configure pipeline
    When Source is SQLServer
    Then Open the SQLServer Properties
    Then Enter SQLServer property jdbcDriverName "sqlserverJdbcDriverName"
    Then Enter SQLServer property host "sqlserverLocalHost"
    Then Enter SQLServer property port "sqlserverPort"
    Then Enter the SQLServer property password with blank username
    Then Enter SQLServer property reference name
    Then Enter the SQlServer property database "sqlserverDataBase"
    Then Enter the SQlServer property importQuery "sqlserverQuery"
    Then Validate blank username field error

  @SQLServer_Source
  Scenario:Verify the validation error for Number of Splits to Generate field with invalid data
    Given Open Datafusion Project to configure pipeline
    When Source is SQLServer
    Then Open the SQLServer Properties
    Then Enter SQLServer property jdbcDriverName "sqlserverJdbcDriverName"
    Then Enter SQLServer property host "sqlserverLocalHost"
    Then Enter SQLServer property port "sqlserverPort"
    Then Enter SQLServer property reference name
    Then Enter the SQlServer property database "sqlserverDataBase"
    Then Enter the SQlServer property importQuery "sqlserverQuery"
    Then Enter SQLServer property numberOfSplitsToGenerate with Invalid test data "sqlserverInvalidNoOfSplits"
    Then Validate noOfSlitsToGenerate field error
