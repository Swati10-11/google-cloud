@Joiner
Feature:Verification of Joiner Plugin

  @GCS_CSV_TEST @BQ_SOURCE_TEST @BQ_SINK_TEST
  Scenario: To verify complete flow of data extract and transfer from multiple sources to single sink using outer join type
    Given Open Datafusion Project to configure pipeline
    When Select plugin: "BigQuery" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "BigQuery"
    Then Enter BigQuery property reference name
    Then Enter BigQuery property projectId "projectId"
    Then Enter BigQuery property datasetProjectId "projectId"
    Then Enter BigQuery property dataset "dataset"
    Then Enter BigQuery source property table name
    Then Validate "BigQuery" plugin properties
    Then Close the BigQuery properties
    When Expand Plugin group in the LHS plugins list: "Analytics"
    When Select plugin: "Joiner" from the plugins list as: "Analytics"
    Then Connect plugins: "BigQuery" and "Joiner" to establish connection
    When Expand Plugin group in the LHS plugins list: "Source"
    When Select plugin: "GCS" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "GCS"
    Then Enter GCS property projectId and reference name
    Then Enter GCS source property path "gcsCsvFile"
    Then Toggle GCS source property skip header to true
    Then Select GCS property format "csv"
    Then Click on the Get Schema button
    Then Validate "GCS" plugin properties
    Then Close the GCS properties
    Then Connect plugins: "GCS" and "Joiner" to establish connection
    When Navigate to the properties page of plugin: "Joiner"
    Then Enter joiner property join type "Outer"
    Then Select joiner property Required Inputs "0-BigQuery"
    Then Select joiner property join condition type "basic"
    Then Select Joiner property join condition "UID"
    Then Select Joiner Property Join condition "EmployeeDepartment"
    Then Click on the Get Schema button
    Then Validate "Joiner" plugin properties
    Then CLose the joiner properties
    When Expand Plugin group in the LHS plugins list: "Sink"
    When Select plugin: "BigQuery" from the plugins list as: "Sink"
    Then Navigate to the properties page of plugin: "BigQuery2"
    Then Enter BigQuery property reference name
    Then Enter BigQuery property projectId "projectId"
    Then Enter BigQuery property datasetProjectId "projectId"
    Then Enter BigQuery property dataset "dataset"
    Then Enter BigQuery sink property table name
    Then Close the BigQuery properties
    Then Connect plugins: "Joiner" and "BigQuery2" to establish connection
    Then Save the pipeline
    Then Preview and run the pipeline
    Then Verify the preview of pipeline is "success"
    Then Click on preview data for BigQuery sink
    Then Close the preview data
    Then Deploy the pipeline
    Then Run the Pipeline in Runtime
    Then Wait till pipeline is in running status with a timeout of 1200 seconds
    Then Open and capture logs
    Then Verify the pipeline status is "Succeeded"
    Then Get count of no of records transferred to target BigQuery Table

  @GCS_CSV_TEST @BQ_SOURCE_TEST @BQ_SINK_TEST
  Scenario: To verify complete flow of data extract and transfer from multiple sources to single sink using inner join type
    Given Open Datafusion Project to configure pipeline
    When Select plugin: "BigQuery" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "BigQuery"
    Then Enter BigQuery property reference name
    Then Enter BigQuery property projectId "projectId"
    Then Enter BigQuery property datasetProjectId "projectId"
    Then Enter BigQuery property dataset "dataset"
    Then Enter BigQuery source property table name
    Then Validate "BigQuery" plugin properties
    Then Close the BigQuery properties
    When Expand Plugin group in the LHS plugins list: "Analytics"
    When Select plugin: "Joiner" from the plugins list as: "Analytics"
    Then Connect plugins: "BigQuery" and "Joiner" to establish connection
    When Expand Plugin group in the LHS plugins list: "Source"
    When Select plugin: "GCS" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "GCS"
    Then Enter GCS property projectId and reference name
    Then Enter GCS source property path "gcsCsvFile"
    Then Toggle GCS source property skip header to true
    Then Select GCS property format "csv"
    Then Click on the Get Schema button
    Then Validate "GCS" plugin properties
    Then Close the GCS properties
    Then Connect plugins: "GCS" and "Joiner" to establish connection
    When Navigate to the properties page of plugin: "Joiner"
    Then Enter joiner property join type "Inner"
    Then Select joiner property join condition type "basic"
    Then Select Joiner property join condition "UID"
    Then Select Joiner Property Join condition "EmployeeDepartment"
    Then Click on the Get Schema button
    Then Validate "Joiner" plugin properties
    Then CLose the joiner properties
    When Expand Plugin group in the LHS plugins list: "Sink"
    When Select plugin: "BigQuery" from the plugins list as: "Sink"
    Then Navigate to the properties page of plugin: "BigQuery2"
    Then Enter BigQuery property reference name
    Then Enter BigQuery property projectId "projectId"
    Then Enter BigQuery property datasetProjectId "projectId"
    Then Enter BigQuery property dataset "dataset"
    Then Enter BigQuery sink property table name
    Then Close the BigQuery properties
    Then Connect plugins: "Joiner" and "BigQuery2" to establish connection
    Then Save the pipeline
    Then Preview and run the pipeline
    Then Verify the preview of pipeline is "success"
    Then Click on preview data for BigQuery sink
    Then Close the preview data
    Then Deploy the pipeline
    Then Run the Pipeline in Runtime
    Then Wait till pipeline is in running status with a timeout of 1200 seconds
    Then Open and capture logs
    Then Verify the pipeline status is "Succeeded"
    Then Get count of no of records transferred to target BigQuery Table

  @GCS_CSV_TEST @BQ_SOURCE_TEST @BQ_SINK_TEST
  Scenario: To verify complete flow of data extract and transfer from multiple sources to  single sink using Advanced join conditionType with inner join type
    Given Open Datafusion Project to configure pipeline
    When Select plugin: "BigQuery" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "BigQuery"
    Then Enter BigQuery property reference name
    Then Enter BigQuery property projectId "projectId"
    Then Enter BigQuery property datasetProjectId "projectId"
    Then Enter BigQuery property dataset "dataset"
    Then Enter BigQuery source property table name
    Then Validate "BigQuery" plugin properties
    Then Close the BigQuery properties
    When Expand Plugin group in the LHS plugins list: "Analytics"
    When Select plugin: "Joiner" from the plugins list as: "Analytics"
    Then Connect plugins: "BigQuery" and "Joiner" to establish connection
    When Expand Plugin group in the LHS plugins list: "Source"
    When Select plugin: "GCS" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "GCS"
    Then Enter GCS property projectId and reference name
    Then Enter GCS source property path "gcsCsvFile"
    Then Toggle GCS source property skip header to true
    Then Select GCS property format "csv"
    Then Click on the Get Schema button
    Then Validate "GCS" plugin properties
    Then Close the GCS properties
    Then Connect plugins: "GCS" and "Joiner" to establish connection
    When Navigate to the properties page of plugin: "Joiner"
    Then Enter joiner property join type "Inner"
    Then Select joiner property join condition type "advanced"
    Then Enter joiner property Input Aliases key "joinerKey"
    Then Enter joiner property Input Aliases value "joinerValue"
    Then Enter joiner property Join Condition "joinerCondition"
    Then Click on the Get Schema button
    Then Validate "Joiner" plugin properties
    Then CLose the joiner properties
    When Expand Plugin group in the LHS plugins list: "Sink"
    When Select plugin: "GCS" from the plugins list as: "Sink"
    Then Navigate to the properties page of plugin: "GCS2"
    Then Enter GCS property projectId and reference name
    Then Enter GCS sink property path
    Then Select GCS property format "csv"
    Then Validate "GCS" plugin properties
    Then Close the GCS properties
    Then Connect plugins: "Joiner" and "GCS2" to establish connection
    Then Save the pipeline
    Then Preview and run the pipeline
    Then Verify the preview of pipeline is "success"
    Then Click on preview data for GCS sink
    Then Close the preview data
    Then Deploy the pipeline
    Then Run the Pipeline in Runtime
    Then Wait till pipeline is in running status with a timeout of 1200 seconds
    Then Open and capture logs
    Then Verify the pipeline status is "Succeeded"
    Then Get count of no of records transferred to target BigQuery Table

  @GCS_CSV_TEST @BQ_SOURCE_TEST @BQ_SINK_TEST
  Scenario: To verify complete flow of data extract and transfer from multiple sources to single sink with Null Keys
    Given Open Datafusion Project to configure pipeline
    When Select plugin: "BigQuery" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "BigQuery"
    Then Enter BigQuery property reference name
    Then Enter BigQuery property projectId "projectId"
    Then Enter BigQuery property datasetProjectId "projectId"
    Then Enter BigQuery property dataset "dataset"
    Then Enter BigQuery source property table name
    Then Validate "BigQuery" plugin properties
    Then Close the BigQuery properties
    When Expand Plugin group in the LHS plugins list: "Analytics"
    When Select plugin: "Joiner" from the plugins list as: "Analytics"
    Then Connect plugins: "BigQuery" and "Joiner" to establish connection
    When Expand Plugin group in the LHS plugins list: "Source"
    When Select plugin: "GCS" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "GCS"
    Then Enter GCS property projectId and reference name
    Then Enter GCS source property path "gcsCsvFile"
    Then Toggle GCS source property skip header to true
    Then Select GCS property format "csv"
    Then Click on the Get Schema button
    Then Validate "GCS" plugin properties
    Then Close the GCS properties
    Then Connect plugins: "GCS" and "Joiner" to establish connection
    When Navigate to the properties page of plugin: "Joiner"
    Then Enter joiner property join type "Outer"
    Then Select joiner property join condition type "basic"
    Then Select Joiner property join condition "UID"
    Then Select Joiner Property Join condition "EmployeeDepartment"
    Then Toggle joiner property join on Null keys set to True
    Then Click on the Get Schema button
    Then Validate "Joiner" plugin properties
    Then CLose the joiner properties
    When Expand Plugin group in the LHS plugins list: "Sink"
    When Select plugin: "GCS" from the plugins list as: "Sink"
    Then Navigate to the properties page of plugin: "GCS2"
    Then Enter GCS property projectId and reference name
    Then Enter GCS sink property path
    Then Select GCS property format "csv"
    Then Validate "GCS" plugin properties
    Then Close the GCS properties
    Then Connect plugins: "Joiner" and "GCS2" to establish connection
    Then Save the pipeline
    Then Preview and run the pipeline
    Then Verify the preview of pipeline is "success"
    Then Click on preview data for GCS sink
    Then Close the preview data
    Then Deploy the pipeline
    Then Run the Pipeline in Runtime
    Then Wait till pipeline is in running status with a timeout of 1200 seconds
    Then Open and capture logs
    Then Verify the pipeline status is "Succeeded"
    Then Get count of no of records transferred to target BigQuery Table

  @GCS_CSV_TEST @BQ_SOURCE_TEST @BQ_SINK_TEST
  Scenario: To verify complete flow of data extract and transfer from multiple sources to single sink with number of partitions
    Given Open Datafusion Project to configure pipeline
    When Select plugin: "BigQuery" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "BigQuery"
    Then Enter BigQuery property reference name
    Then Enter BigQuery property projectId "projectId"
    Then Enter BigQuery property datasetProjectId "projectId"
    Then Enter BigQuery property dataset "dataset"
    Then Enter BigQuery source property table name
    Then Validate "BigQuery" plugin properties
    Then Close the BigQuery properties
    When Expand Plugin group in the LHS plugins list: "Analytics"
    When Select plugin: "Joiner" from the plugins list as: "Analytics"
    Then Connect plugins: "BigQuery" and "Joiner" to establish connection
    When Expand Plugin group in the LHS plugins list: "Source"
    When Select plugin: "GCS" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "GCS"
    Then Enter GCS property projectId and reference name
    Then Enter GCS source property path "gcsCsvFile"
    Then Toggle GCS source property skip header to true
    Then Select GCS property format "csv"
    Then Click on the Get Schema button
    Then Validate "GCS" plugin properties
    Then Close the GCS properties
    Then Connect plugins: "GCS" and "Joiner" to establish connection
    When Navigate to the properties page of plugin: "Joiner"
    Then Enter joiner property join type "Outer"
    Then Select joiner property join condition type "basic"
    Then Select Joiner property join condition "UID"
    Then Select Joiner Property Join condition "EmployeeDepartment"
    Then Toggle joiner property join on Null keys set to True
    Then Enter joiner property Number of Partitions "numberOfPartitions"
    Then Click on the Get Schema button
    Then Validate "Joiner" plugin properties
    Then CLose the joiner properties
    When Expand Plugin group in the LHS plugins list: "Sink"
    When Select plugin: "GCS" from the plugins list as: "Sink"
    Then Navigate to the properties page of plugin: "GCS2"
    Then Enter GCS property projectId and reference name
    Then Enter GCS sink property path
    Then Select GCS property format "csv"
    Then Validate "GCS" plugin properties
    Then Close the GCS properties
    Then Connect plugins: "Joiner" and "GCS2" to establish connection
    Then Save the pipeline
    Then Preview and run the pipeline
    Then Verify the preview of pipeline is "success"
    Then Click on preview data for GCS sink
    Then Close the preview data
    Then Deploy the pipeline
    Then Run the Pipeline in Runtime
    Then Wait till pipeline is in running status with a timeout of 1200 seconds
    Then Open and capture logs
    Then Verify the pipeline status is "Succeeded"
    Then Get count of no of records transferred to target BigQuery Table

  @GCS_CSV_TEST @BQ_SOURCE_TEST
  Scenario:Verify Joiner plugin  properties validation errors for mandatory fields
    Given Open Datafusion Project to configure pipeline
    When Select plugin: "BigQuery" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "BigQuery"
    Then Enter BigQuery property reference name
    Then Enter BigQuery property projectId "projectId"
    Then Enter BigQuery property datasetProjectId "projectId"
    Then Enter BigQuery property dataset "dataset"
    Then Enter BigQuery source property table name
    Then Validate "BigQuery" plugin properties
    Then Close the BigQuery properties
    When Expand Plugin group in the LHS plugins list: "Analytics"
    When Select plugin: "Joiner" from the plugins list as: "Analytics"
    Then Connect plugins: "BigQuery" and "Joiner" to establish connection
    When Expand Plugin group in the LHS plugins list: "Source"
    When Select plugin: "GCS" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "GCS"
    Then Enter GCS property projectId and reference name
    Then Enter GCS source property path "gcsCsvFile"
    Then Toggle GCS source property skip header to true
    Then Select GCS property format "csv"
    Then Click on the Get Schema button
    Then Validate "GCS" plugin properties
    Then Close the GCS properties
    Then Connect plugins: "GCS" and "Joiner" to establish connection
    When Navigate to the properties page of plugin: "Joiner"
    Then Expand Bigquery expansion panel "BigQuery"
    Then Select joiner property BigQuery name "none"
    When Select joiner property fields with blank property "fields"