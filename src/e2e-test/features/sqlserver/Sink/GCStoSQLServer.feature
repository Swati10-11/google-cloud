@SQLServer_Sink
Feature:Verification of GCS to SQLServer Data Transfer

 @GCS_CSV_TEST @SQLServer_Sink
 Scenario: To Verify data is getting transferred from GCS to SQLServer
    Given Open Datafusion Project to configure pipeline
    When Source is GCS
    When Sink is SQLServer
    Then Open GCS source properties
    Then Enter the GCS source mandatory properties
    Then Validate "GCS" plugin properties
    Then Close the GCS properties
    Then Open the SQLServer sink Properties
    Then Enter SQLServer property reference name
    Then Enter SQLServer sink property JDBCDriverName "sqlserverJdbcDriverName"
    Then Enter SQLServer property host "sqlserverLocalHost"
    Then Enter SQLServer property port "sqlserverPort"
    Then Enter the SQlServer property database "sqlserverDataBase"
    Then Enter the SQLServer sink properties with "sqlServerSinkTableName"
    Then Enter SQLServer sink Credentials
    Then Enter the SQLServer Advanced property instanceName "sqlserverInstanceName"
    Then Enter the SQLServer Advanced property queryTimeOut "sqlserverQueryTimeOut"
    Then Enter the SQLServer Advanced property connectTimeOut "sqlserverConnectTimeOut"
    Then Enter the SQLServer Advanced property packet size "sqlserverPacketSize"
    Then Enter the SQLServer Advanced property current language "sqlserverCurrentLanguage"
    Then Validate "SQLServer" plugin properties
    Then Close the SQLServer Properties
    Then Connect source as "GCS" and sink as "SqlServer" to establish connection
    Then Save the pipeline
    Then Preview and run the pipeline
    Then Verify the preview of pipeline is "success"
    Then Click on preview data for SQLServer sink
    Then Close the preview data
    Then Deploy the pipeline
    Then Run the Pipeline in Runtime
    Then Wait till pipeline is in running state
    Then Open and capture logs
    Then Verify the pipeline status is "Succeeded"

   @GCS_CSV_TEST @SQLServer_Sink
   Scenario: To Verify data is getting transferred from GCS to SQLServer with Encrypt and Trust Server Certificate field
      Given Open Datafusion Project to configure pipeline
      When Source is GCS
      When Sink is SQLServer
      Then Open GCS source properties
      Then Enter the GCS source mandatory properties
      Then Validate "GCS" plugin properties
      Then Close the GCS properties
      Then Open the SQLServer sink Properties
      Then Enter SQLServer property reference name
      Then Enter SQLServer sink property JDBCDriverName "sqlserverJdbcDriverName"
      Then Enter SQLServer property host "sqlserverLocalHost"
      Then Enter SQLServer property port "sqlserverPort"
      Then Enter the SQlServer property database "sqlserverDataBase"
      Then Enter the SQLServer sink properties with "sqlServerSinkTableName"
      Then Enter SQLServer sink Credentials
      Then Enter the SQLServer Advanced property instanceName "sqlserverInstanceName"
      Then Enter the SQLServer Advanced property queryTimeOut "sqlserverQueryTimeOut"
      Then Enter the SQLServer Advanced property connectTimeOut "sqlserverConnectTimeOut"
      Then Toggle SQLServer Advanced property Encrypt to Yes
      Then Toggle SQLServer Advanced property Trust Server Certificate to Yes
      Then Enter the SQLServer Advanced property packet size "sqlserverPacketSize"
      Then Enter the SQLServer Advanced property current language "sqlserverCurrentLanguage"
      Then Enter SQLServer sink property authenticationType "sqlserverSinkAuthenticationType"
      Then Validate "SQLServer" plugin properties
      Then Close the SQLServer Properties
      Then Connect source as "GCS" and sink as "SqlServer" to establish connection
      Then Save the pipeline
      Then Preview and run the pipeline
      Then Verify the preview of pipeline is "success"
      Then Click on preview data for SQLServer sink
      Then Close the preview data
      Then Deploy the pipeline
      Then Run the Pipeline in Runtime
      Then Wait till pipeline is in running state
      Then Open and capture logs
      Then Verify the pipeline status is "Succeeded"

   @GCS_CSV_TEST @SQLServer_Sink
   Scenario: To Verify data is getting transferred from GCS to SQLServer with connection Arguments field
      Given Open Datafusion Project to configure pipeline
      When Source is GCS
      When Sink is SQLServer
      Then Open GCS source properties
      Then Enter the GCS source mandatory properties
      Then Validate "GCS" plugin properties
      Then Close the GCS properties
      Then Open the SQLServer sink Properties
      Then Enter SQLServer property reference name
      Then Enter SQLServer sink property JDBCDriverName "sqlserverJdbcDriverName"
      Then Enter SQLServer property host "sqlserverLocalHost"
      Then Enter SQLServer property port "sqlserverPort"
      Then Enter the SQlServer property database "sqlserverDataBase"
      Then Enter the SQLServer sink properties with "sqlServerSinkTableName"
      Then Enter SQLServer sink Credentials
      Then Enter the SQLServer Advanced property instanceName "sqlserverInstanceName"
      Then Enter the SQLServer Advanced property queryTimeOut "sqlserverQueryTimeOut"
      Then Enter the SQLServer Advanced property connectTimeOut "sqlserverConnectTimeOut"
      Then Enter the SQLServer Advanced property packet size "sqlserverPacketSize"
      Then Enter the SQLServer Advanced property current language "sqlserverCurrentLanguage"
      Then Enter SQLServer Property connection arguments key "sqlServerConnectionArguKey"
      Then Enter SQLServer Property connection arguments value "sqlserverConnectionArguValue"
      Then Enter SQLServer sink property authenticationType "sqlserverSinkAuthenticationType"
      Then Validate "SQLServer" plugin properties
      Then Close the SQLServer Properties
      Then Connect source as "GCS" and sink as "SqlServer" to establish connection
      Then Save the pipeline
      Then Preview and run the pipeline
      Then Verify the preview of pipeline is "success"
      Then Click on preview data for SQLServer sink
      Then Close the preview data
      Then Deploy the pipeline
      Then Run the Pipeline in Runtime
      Then Wait till pipeline is in running state
      Then Open and capture logs
      Then Verify the pipeline status is "Succeeded"
