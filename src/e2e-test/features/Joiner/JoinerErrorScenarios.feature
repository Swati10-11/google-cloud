@Joiner
Feature:Verification of Joiner Plugin Error Scenarios

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
Then Expand GCS expansion panel "GCS"
Then Select joiner property GCS name "none"
Then Click on the Get Schema button
