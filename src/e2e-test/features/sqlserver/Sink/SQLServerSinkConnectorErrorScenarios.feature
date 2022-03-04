@SQLServer_Sink
Feature: Verify SQLServerSink Plugin Error Scenarios

  @SQLServer_Sink
  Scenario Outline:Verify SQLServer Sink properties validation errors for mandatory fields
    Given Open Datafusion Project to configure pipeline
    When  Sink is SQLServer
    Then  Open the SQLServer sink Properties
    Then  Enter the SQLServer Sink Properties with blank property "<property>"
    Then  Validate mandatory property error for "<property>"
    Examples:
      | property       |
      | referenceName  |
      | jdbcPluginName |
      | host           |
      | port           |
      | database       |
      | tableName      |


  @SQLServer_Sink
  Scenario:Verify Driver Name field validation error for invalid test data
    Given Open Datafusion Project to configure pipeline
    When Sink is SQLServer
    Then Open the SQLServer sink Properties
    Then Enter SQLServer property reference name
    Then Enter SQLServer property DriverName with Invalid test data "sqlserverInvalidJdbcPluginName"
    Then Enter SQLServer property host "sqlserverLocalHost"
    Then Enter SQLServer property port "sqlserverPort"
    Then Enter the SQlServer property database "sqlserverDataBase"
    Then Enter the SQLServer sink properties with "sqlServerSinkTable_Name"
    Then Validate jdbcPluginName field error


  @SQLServer_Sink
  Scenario: Verify Reference Name field validation error for invalid test data
    Given Open Datafusion Project to configure pipeline
    When Sink is SQLServer
    Then Open the SQLServer sink Properties
    Then Enter SQLServer property reference name with Invalid test data "sqlserverInvalidReferenceName"
    Then Enter SQLServer sink property JDBCDriverName "sqlserverJdbcDriverName"
    Then Enter SQLServer property host "sqlserverLocalHost"
    Then Enter SQLServer property port "sqlserverPort"
    Then Enter the SQlServer property database "sqlserverDataBase"
    Then Enter the SQLServer sink properties with "sqlServerSinkTable_Name"
    Then Validate referenceName field error

  @SQLServer_Sink
  Scenario:Verify the validation error for blank username field when password is given
    Given Open Datafusion Project to configure pipeline
    When Sink is SQLServer
    Then Open the SQLServer sink Properties
    Then Enter SQLServer property reference name
    Then Enter SQLServer sink property JDBCDriverName "sqlserverJdbcDriverName"
    Then Enter SQLServer property host "sqlserverLocalHost"
    Then Enter SQLServer property port "sqlserverPort"
    Then Enter the SQlServer property database "sqlserverDataBase"
    Then Enter the SQLServer property password with blank username
    Then Enter the SQLServer sink properties with "sqlServerSinkTableName"
    Then Validate blank username field error