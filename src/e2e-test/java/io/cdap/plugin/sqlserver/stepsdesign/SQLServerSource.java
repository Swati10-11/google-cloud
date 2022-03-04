/*
 * Copyright © 2021 Cask Data, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */
package io.cdap.plugin.sqlserver.stepsdesign;

import io.cdap.e2e.pages.actions.CdfStudioActions;
import io.cdap.e2e.pages.locators.CdfStudioLocators;
import io.cdap.e2e.utils.CdfHelper;
import io.cdap.e2e.utils.PluginPropertyUtils;
import io.cdap.e2e.utils.SeleniumHelper;
import io.cdap.plugin.sqlserver.actions.SQLServerActions;
import io.cdap.plugin.sqlserver.locators.SQLServerLocators;
import io.cdap.plugin.utils.E2ETestConstants;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

/**
 *  SQLServer Source related stepDesigns.
 */
public class SQLServerSource implements CdfHelper {

    @When("Source is SQLServer")
    public void sourceIsSQLServer() {
        selectSourcePlugin("SqlServer");
    }

    @Then("Enter the SQLServer Source Properties with blank property {string}")
    public void enterTheSQLServerSourcePropertiesWithBlankProperty(String property) {
        if (!property.equalsIgnoreCase("referenceName")) {
            SQLServerActions.enterSQLServerReferenceName(PluginPropertyUtils.
                    pluginProp("sqlserverReferenceName"));
        }
        if (!property.equalsIgnoreCase("database")) {
            SQLServerActions.enterDatabaseName(PluginPropertyUtils.pluginProp("sqlserverDataBase"));
        }
        if (!property.equalsIgnoreCase("importQuery")) {
            SQLServerActions.enterImportQuery(PluginPropertyUtils.pluginProp("sqlserverQuery"));
        }
        if (!PluginPropertyUtils.pluginProp("sqlserverSourceMandatoryProperties").contains(property)) {
            Assert.fail("SQLServerBlank mandatory property " + property);
        }
    }

    @Then("Validate number of splits field error")
    public void validateNumberOfSplitsFieldError() {
        SQLServerActions.clickValidateButton();
    }

    @Then("Validate Bounding Query field error")
    public void validateBoundingQueryFieldError() {
        SQLServerActions.clickValidateButton();
        String expectedErrorMessage = PluginPropertyUtils.
                errorProp(E2ETestConstants.ERROR_MSG_SQLSERVER_BOUNDING_QUERY);
        String actualErrorMessage = PluginPropertyUtils.findPropertyErrorElement("boundingQuery").getText();
        Assert.assertEquals(expectedErrorMessage, actualErrorMessage);
        actualErrorMessage = PluginPropertyUtils.findPropertyErrorElement("numSplits").getText();
        Assert.assertEquals(expectedErrorMessage, actualErrorMessage);
    }

    @Then("Validate property error for {string}")
    public void validatePropertyErrorFor(String property) {
        CdfStudioActions.clickValidateButton();
        SeleniumHelper.waitElementIsVisible(CdfStudioLocators.validateButton, 10L);
        PluginPropertyUtils.errorProp(property);
    }

    @Then("Verify plugin validation fails with error")
    public void verifyPluginValidationFailsWithError() {
        CdfStudioActions.clickValidateButton();
        SeleniumHelper.waitElementIsVisible(CdfStudioLocators.pluginValidationErrorMsg, 10L);
        String expectedErrorMessage = PluginPropertyUtils.errorProp(E2ETestConstants.ERROR_MSG_ERROR_FOUND_VALIDATION);
        String actualErrorMessage = CdfStudioLocators.pluginValidationErrorMsg.getText();
        Assert.assertEquals(expectedErrorMessage, actualErrorMessage);
    }

    @Then("Enter Reference Name {string} & Database Name {string} with Test Data")
    public void enterReferenceNameDatabaseNameWithTestData(String referenceName, String databaseName) {
        SQLServerActions.enterSQLServerReferenceName((PluginPropertyUtils.pluginProp(referenceName)));
        SQLServerActions.enterDatabaseName(PluginPropertyUtils.pluginProp(databaseName));
    }

    @Then("Validate Connector properties")
    public void validateConnectorProperties() {
        SQLServerActions.clickValidateButton();
        SeleniumHelper.waitElementIsVisible(SQLServerLocators.sqlserverCloseButton, 10);
    }

    @Then("Toggle SQLServer source property Encrypt to Enabled")
    public void toggleSQLServerSourcePropertyEncryptToEnabled() {
        SQLServerActions.clickEncrypt();
    }

    @Then("Enter SQLServer property Authentication type")
    public void enterSQLServerPropertyAuthenticationType() {
        SQLServerActions.enterAuthenticationType();
        SQLServerActions.enterUserName(PluginPropertyUtils.pluginProp("SQL_Server_User_Name"));
        SQLServerActions.enterPassword(PluginPropertyUtils.pluginProp("SQL_Server_Password"));
    }

   @Then("Provide values in Split-By Field Name and Number of splits")
    public void provideValuesInSplitByFieldNameAndNumberOfSplits() {
     SQLServerActions.enterSplitByFieldName(PluginPropertyUtils.
                pluginProp("sqlserverSplitByFieldName"));
        SeleniumHelper.replaceElementValue(SQLServerLocators.sqlserverNumberOfSplitsToGenerate,
                PluginPropertyUtils.pluginProp("numberOfSplits"));
    }

    @Then("Enter the SQLServer property boundingQuery {string}")
    public void enterTheSQLServerPropertyBoundingQuery(String query) {
        SQLServerActions.enterBoundingQuery(PluginPropertyUtils.pluginProp(query));
    }

    @Then("Enter SQLServer property reference name with Invalid test data {string}")
    public void enterSQLServerPropertyReferenceNameWithInvalidTestData(String property) {
        SQLServerActions.enterSQLServerReferenceName(PluginPropertyUtils.pluginProp(property));
    }

    @Then("Enter the source SQLServer properties with blank {string}")
    public void enterTheSourceSQLServerPropertiesWithBlank(String username) {
        SQLServerActions.enterUserName(PluginPropertyUtils.pluginProp("SQL_Server_User_Name"));
        SQLServerActions.enterPassword(PluginPropertyUtils.pluginProp("SQL_Server_Password"));
    }

    @Then("Enter SQLServer property jdbcDriverName {string}")
    public void enterSQLServerPropertyJdbcDriverName(String jdbcDriverName) {
        SQLServerActions.selectJDBCDriverName(PluginPropertyUtils.pluginProp(jdbcDriverName));

    }

    @Then("Enter the SQLServer property splitByFieldName {string}")
    public void enterTheSQLServerPropertySplitByFieldName(String  splitByFieldName) {
        SQLServerActions.enterSplitByFieldName(PluginPropertyUtils.pluginProp(splitByFieldName));
    }

    @Then("Enter the SQLServer property numberOfSplitsToGenerate {string}")
    public void enterTheSQLServerPropertyNumberOfSplitsToGenerate(String numberOfSplitsToGenerate) {
        SQLServerActions.enterNumberOfSplitToGenerate(PluginPropertyUtils.pluginProp(numberOfSplitsToGenerate));
    }

    @Then("Validate referenceName field error")
    public void validateReferenceNameFieldError() {
        SQLServerActions.clickValidateButton();
        String expectedErrorMessage = PluginPropertyUtils.
                errorProp(E2ETestConstants.ERROR_MSG_SQLSERVER_REFERENCE_NAME);
        String actualErrorMessage = PluginPropertyUtils.findPropertyErrorElement("referenceName").getText();
        Assert.assertEquals(expectedErrorMessage, actualErrorMessage);
    }

    @Then("Enter the SQlServer property importQuery {string}")
    public void enterTheSQlServerPropertyImportQuery(String query) {
        SQLServerActions.enterImportQuery(PluginPropertyUtils.pluginProp(query));
    }

    @Then("Enter the SQLServer property password with blank username")
    public void enterTheSQLServerPropertyPasswordWithBlankUsername() {
        SQLServerActions.enterPassword(PluginPropertyUtils.pluginProp("SQL_Server_Password"));
    }

    @Then("Enter SQLServer property numberOfSplitsToGenerate with Invalid test data {string}")
    public void enterSQLServerPropertyNumberOfSplitsToGenerateWithInvalidTestData(String noOfSplits) {
        SQLServerActions.enterNumberOfSplitToGenerate(PluginPropertyUtils.pluginProp(noOfSplits));
    }

    @Then("Validate noOfSlitsToGenerate field error")
    public void validateNoOfSlitsToGenerateFieldError() {
        SQLServerActions.clickValidateButton();
        String expectedErrorMessage = PluginPropertyUtils.
                errorProp(E2ETestConstants.ERROR_MSG_SQLSERVER_NO_OF_SPLITS_TO_GENERATE);
        String actualErrorMessage = PluginPropertyUtils.findPropertyErrorElement("numSplits").getText();
        Assert.assertEquals(expectedErrorMessage, actualErrorMessage);
    }
}
