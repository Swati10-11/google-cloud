@SQLServer_Source
Feature: SQLServer source- Verification of SQLServer to BQ Data Transfer

  @SQLServer_Source @BQ_SINK_TEST
 Scenario:To Verify data is getting transferred from SQLServer to BQ with all mandatory fields
    Given Open Datafusion Project to configure pipeline
    When Source is SQLServer
    When Sink is BigQuery
    Then Connect source as "SQL-Server" and sink as "BigQuery" to establish connection
    Then Open the SQLServer Properties
    Then Enter SQLServer property jdbcDriverName "sqlserverJdbcDriverName"
    Then Enter SQLServer property host "sqlserverLocalHost"
    Then Enter SQLServer property port "sqlserverPort"
    Then Enter SQLServer property Authentication type
    Then Enter SQLServer property reference name
    Then Enter the SQlServer property database "sqlserverDataBase"
    Then Enter the SQlServer property importQuery "sqlserverQuery"
    Then Enter the SQLServer Advanced property instanceName "sqlserverInstanceName"
    Then Enter the SQLServer Advanced property queryTimeOut "sqlserverQueryTimeOut"
    Then Enter the SQLServer Advanced property connectTimeOut "sqlserverConnectTimeOut"
    Then Enter the SQLServer Advanced property packet size "sqlserverPacketSize"
    Then Enter the SQLServer Advanced property current language "sqlserverCurrentLanguage"
    Then Validate output schema with expectedSchema "sqlserverSchema"
    Then Validate "SQLServer" plugin properties
    Then Close the SQLServer Properties
    Then Open BigQuery sink properties
    Then Enter the BigQuery sink mandatory properties
    Then Validate "BigQuery" plugin properties
    Then Close the BigQuery properties
    Then Save the pipeline
    Then Preview and run the pipeline
    Then Verify the preview of pipeline is "success"
    Then Click on preview data for BigQuery sink
    Then Verify preview output schema matches the outputSchema captured in properties
    Then Close the preview data
    Then Deploy the pipeline
    Then Run the Pipeline in Runtime
    Then Wait till pipeline is in running state
    Then Open and capture logs
    Then Verify the pipeline status is "Succeeded"
    Then Get count of no of records transferred to target BigQuery Table

  @SQLServer_Source @BQ_SINK_TEST
  Scenario:To Verify data is getting transferred from SQLServer to BQ with bigdata load
     Given Open Datafusion Project to configure pipeline
     When Source is SQLServer
     When Sink is BigQuery
     Then Open the SQLServer Properties
     Then Enter SQLServer property jdbcDriverName "sqlserverJdbcDriverName"
     Then Enter SQLServer property host "sqlserverLocalHost"
     Then Enter SQLServer property port "sqlserverPort"
     Then Enter SQLServer property Authentication type
     Then Enter SQLServer property reference name
     Then Enter the SQlServer property database "sqlserverDataBase"
     Then Enter the SQlServer property importQuery "sqlserverBigDataImportQuery"
     Then Enter the SQLServer Advanced property instanceName "sqlserverInstanceName"
     Then Enter the SQLServer Advanced property packet size "sqlserverPacketSize"
     Then Enter the SQLServer Advanced property current language "sqlserverCurrentLanguage"
     Then Validate output schema with expectedSchema "sqlserverBigdataSchema"
     Then Validate "SQLServer" plugin properties
     Then Close the SQLServer Properties
     Then Open BigQuery sink properties
     Then Enter the BigQuery sink mandatory properties
     Then Validate "BigQuery" plugin properties
     Then Close the BigQuery properties
     Then Connect source as "SQL-Server" and sink as "BigQuery" to establish connection
     Then Save the pipeline
     Then Preview and run the pipeline
     Then Verify the preview of pipeline is "success"
     Then Click on preview data for BigQuery sink
     Then Close the preview data
     Then Deploy the pipeline
     Then Run the Pipeline in Runtime
     Then Wait till pipeline is in running state
     Then Open and capture logs
     Then Verify the pipeline status is "Succeeded"
     Then Get count of no of records transferred to target BigQuery Table

  @SQLServer_Source @BQ_SINK_TEST
  Scenario: To Verify data is getting transferred from SQLServer to BQ with Column Encryption field
     Given Open Datafusion Project to configure pipeline
     When Source is SQLServer
     When Sink is BigQuery
     Then Connect source as "SQL-Server" and sink as "BigQuery" to establish connection
     Then Open the SQLServer Properties
     Then Enter SQLServer property jdbcDriverName "sqlserverJdbcDriverName"
     Then Enter SQLServer property host "sqlserverLocalHost"
     Then Enter SQLServer property port "sqlserverPort"
     Then Enter SQLServer property Authentication type
     Then Enter SQLServer property reference name
     Then Enter the SQlServer property database "sqlserverDataBase"
     Then Enter the SQlServer property importQuery "sqlserverColumnEncryptionQuery"
     Then Enter the SQLServer Advanced property instanceName "sqlserverInstanceName"
     Then Enter the SQLServer Advanced property queryTimeOut "sqlserverQueryTimeOut"
     Then Enter the SQLServer Advanced property connectTimeOut "sqlserverConnectTimeOut"
     Then Toggle SQLServer Advanced property Column Encryption to Enabled
     Then Enter the SQLServer Advanced property packet size "sqlserverPacketSize"
     Then Enter the SQLServer Advanced property current language "sqlserverCurrentLanguage"
     Then Validate output schema with expectedSchema "columnEncryptionSqlServerSchema"
     Then Validate "SQLServer" plugin properties
     Then Close the SQLServer Properties
     Then Open BigQuery sink properties
     Then Enter the BigQuery sink mandatory properties
     Then Validate "BigQuery" plugin properties
     Then Close the BigQuery properties
     Then Save the pipeline
     Then Preview and run the pipeline
     Then Verify the preview of pipeline is "success"
     Then Click on preview data for BigQuery sink
     Then Verify preview output schema matches the outputSchema captured in properties
     Then Close the preview data
     Then Deploy the pipeline
     Then Run the Pipeline in Runtime
     Then Wait till pipeline is in running state
     Then Open and capture logs
     Then Verify the pipeline status is "Succeeded"
     Then Get count of no of records transferred to target BigQuery Table

  @SQLServer_Source @BQ_SINK_TEST
  Scenario: To Verify data is getting transferred from SQLServer to BQ with Bounding query
     Given Open Datafusion Project to configure pipeline
     When Source is SQLServer
     When Sink is BigQuery
     Then Connect source as "SQL-Server" and sink as "BigQuery" to establish connection
     Then Open the SQLServer Properties
     Then Enter SQLServer property jdbcDriverName "sqlserverJdbcDriverName"
     Then Enter SQLServer property host "sqlserverLocalHost"
     Then Enter SQLServer property port "sqlserverPort"
     Then Enter SQLServer property Authentication type
     Then Enter SQLServer property reference name
     Then Enter the SQlServer property database "sqlserverDataBase"
     Then Enter the SQlServer property importQuery "sqlserverImportQuery1"
     Then Enter the SQLServer property boundingQuery "sqlserverBoundingQuery"
     Then Enter the SQLServer property splitByFieldName "sqlserverSplitByFieldName"
     Then Enter the SQLServer property numberOfSplitsToGenerate "sqlserverNoOfSplitsToGenerate"
     Then Enter the SQLServer Advanced property instanceName "sqlserverInstanceName"
     Then Enter the SQLServer Advanced property queryTimeOut "sqlserverQueryTimeOut"
     Then Enter the SQLServer Advanced property connectTimeOut "sqlserverConnectTimeOut"
     Then Enter the SQLServer Advanced property packet size "sqlserverPacketSize"
     Then Enter the SQLServer Advanced property current language "sqlserverCurrentLanguage"
     Then Validate output schema with expectedSchema "sqlserverSchema"
     Then Validate "SQLServer" plugin properties
     Then Close the SQLServer Properties
     Then Open BigQuery sink properties
     Then Enter the BigQuery sink mandatory properties
     Then Validate "BigQuery" plugin properties
     Then Close the BigQuery properties
     Then Save the pipeline
     Then Preview and run the pipeline
     Then Verify the preview of pipeline is "success"
     Then Click on preview data for BigQuery sink
     Then Verify preview output schema matches the outputSchema captured in properties
     Then Close the preview data
     Then Deploy the pipeline
     Then Run the Pipeline in Runtime
     Then Wait till pipeline is in running state
     Then Open and capture logs
     Then Verify the pipeline status is "Succeeded"
     Then Get count of no of records transferred to target BigQuery Table

  @SQLServer_Source @BQ_SINK_TEST
  Scenario: To Verify data is getting transferred from SQLServer to BQ with connection Arguments field
     Given Open Datafusion Project to configure pipeline
     When Source is SQLServer
     When Sink is BigQuery
     Then Connect source as "SQL-Server" and sink as "BigQuery" to establish connection
     Then Open the SQLServer Properties
     Then Enter SQLServer property jdbcDriverName "sqlserverJdbcDriverName"
     Then Enter SQLServer property host "sqlserverLocalHost"
     Then Enter SQLServer property port "sqlserverPort"
     Then Enter SQLServer property Authentication type
     Then Enter SQLServer Property connection arguments key "sqlServerConnectionArguKey"
     Then Enter SQLServer Property connection arguments value "sqlserverConnectionArguValue"
     Then Enter SQLServer property reference name
     Then Enter the SQlServer property database "sqlserverDataBase"
     Then Enter the SQlServer property importQuery "sqlserverQuery"
     Then Enter the SQLServer Advanced property instanceName "sqlserverInstanceName"
     Then Enter the SQLServer Advanced property queryTimeOut "sqlserverQueryTimeOut"
     Then Enter the SQLServer Advanced property connectTimeOut "sqlserverConnectTimeOut"
     Then Enter the SQLServer Advanced property packet size "sqlserverPacketSize"
     Then Enter the SQLServer Advanced property current language "sqlserverCurrentLanguage"
     Then Validate output schema with expectedSchema "sqlserverSchema"
     Then Validate "SQLServer" plugin properties
     Then Close the SQLServer Properties
     Then Open BigQuery sink properties
     Then Enter the BigQuery sink mandatory properties
     Then Validate "BigQuery" plugin properties
     Then Close the BigQuery properties
     Then Save the pipeline
     Then Preview and run the pipeline
     Then Verify the preview of pipeline is "success"
     Then Click on preview data for BigQuery sink
     Then Verify preview output schema matches the outputSchema captured in properties
     Then Close the preview data
     Then Deploy the pipeline
     Then Run the Pipeline in Runtime
     Then Wait till pipeline is in running state
     Then Open and capture logs
     Then Verify the pipeline status is "Succeeded"
     Then Get count of no of records transferred to target BigQuery Table

   @SQLServer_Source @BQ_SINK_TEST
   Scenario: To Verify data is getting transferred from SQLServer to BQ with Encrypt and Trust Server Certificate field
      Given Open Datafusion Project to configure pipeline
      When Source is SQLServer
      When Sink is BigQuery
      Then Connect source as "SQL-Server" and sink as "BigQuery" to establish connection
      Then Open the SQLServer Properties
      Then Enter SQLServer property jdbcDriverName "sqlserverJdbcDriverName"
      Then Enter SQLServer property host "sqlserverLocalHost"
      Then Enter SQLServer property port "sqlserverPort"
      Then Enter SQLServer property Authentication type
      Then Enter SQLServer property reference name
      Then Enter the SQlServer property database "sqlserverDataBase"
      Then Enter the SQlServer property importQuery "sqlserverQuery"
      Then Enter the SQLServer Advanced property instanceName "sqlserverInstanceName"
      Then Enter the SQLServer Advanced property queryTimeOut "sqlserverQueryTimeOut"
      Then Enter the SQLServer Advanced property connectTimeOut "sqlserverConnectTimeOut"
      Then Toggle SQLServer Advanced property Encrypt to Yes
      Then Toggle SQLServer Advanced property Trust Server Certificate to Yes
      Then Enter the SQLServer Advanced property packet size "sqlserverPacketSize"
      Then Enter the SQLServer Advanced property current language "sqlserverCurrentLanguage"
      Then Validate output schema with expectedSchema "sqlserverSchema"
      Then Validate "SQLServer" plugin properties
      Then Close the SQLServer Properties
      Then Open BigQuery sink properties
      Then Enter the BigQuery sink mandatory properties
      Then Validate "BigQuery" plugin properties
      Then Close the BigQuery properties
      Then Save the pipeline
      Then Preview and run the pipeline
      Then Verify the preview of pipeline is "success"
      Then Click on preview data for BigQuery sink
      Then Verify preview output schema matches the outputSchema captured in properties
      Then Close the preview data
      Then Deploy the pipeline
      Then Run the Pipeline in Runtime
      Then Wait till pipeline is in running state
      Then Open and capture logs
      Then Verify the pipeline status is "Succeeded"
      Then Get count of no of records transferred to target BigQuery Table