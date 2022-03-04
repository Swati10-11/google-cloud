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
import io.cdap.e2e.pages.locators.CdfStudioLocators;
import io.cdap.e2e.utils.CdfHelper;
import io.cdap.e2e.utils.PluginPropertyUtils;
import io.cdap.e2e.utils.SeleniumHelper;
import io.cdap.plugin.sqlserver.actions.SQLServerActions;
import io.cdap.plugin.utils.E2ETestConstants;
import io.cucumber.java.en.Then;
import org.junit.Assert;

/**
 *  sqlServerBase related stepsDesign.
 */
public class SQLServerBase implements CdfHelper {
    static {
        SeleniumHelper.getPropertiesLocators(CdfStudioLocators.class);
    }

    @Then("Enter SQLServer property reference name")
    public void enterSQLServerPropertyReferenceName() {
        SQLServerActions.enterSQLServerReferenceName(PluginPropertyUtils.pluginProp("sqlserverReferenceName"));
    }

    @Then("Click on Validate button")
    public void clickValidate() {
        SQLServerActions.clickValidateButton();
    }

    @Then("Open the SQLServer Properties")
    public void openTheSQLServerProperties() {
        openSourcePluginProperties("SqlServer");
    }

    @Then("Enter SQLServer property host {string}")
    public void enterSQLServerPropertyHost(String host) {
        SQLServerActions.enterHostName(PluginPropertyUtils.pluginProp(host));
    }

    @Then("Enter SQLServer property port {string}")
    public void enterSQLServerPropertyPort(String port) {
        SQLServerActions.enterPort(PluginPropertyUtils.pluginProp(port));
    }

    @Then("Enter the SQlServer property database {string}")
    public void enterTheSQlServerPropertyDatabase(String database) {
        SQLServerActions.enterDatabaseName(PluginPropertyUtils.pluginProp(database));
    }

    @Then("Enter SQLServer Property connection arguments key {string}")
    public void enterSQLServerPropertyConnectionArgumentsKey(String key) {
        SQLServerActions.enterConnectionArgumentsKey(PluginPropertyUtils.pluginProp(key));
    }

    @Then("Enter SQLServer Property connection arguments value {string}")
    public void enterSQLServerPropertyConnectionArgumentsValue(String value) {
        SQLServerActions.enterConnectionArgumentsValue(PluginPropertyUtils.pluginProp(value));
    }

    @Then("Enter the SQLServer Advanced property instanceName {string}")
    public void enterTheSQLServerAdvancedPropertyInstanceName(String  instanceName) {
        SQLServerActions.enterInstanceName(instanceName);
    }

    @Then("Enter the SQLServer Advanced property queryTimeOut {string}")
    public void enterTheSQLServerAdvancedPropertyQueryTimeOut(String queryTimeOut) {
        SQLServerActions.enterQueryTimeOut(PluginPropertyUtils.pluginProp(queryTimeOut));
    }

    @Then("Enter the SQLServer Advanced property connectTimeOut {string}")
    public void enterTheSQLServerAdvancedPropertyConnectTimeOut(String connectTimeOut) {
        SQLServerActions.enterConnectTimeOut(PluginPropertyUtils.pluginProp(connectTimeOut));
    }

    @Then("Toggle SQLServer Advanced property Column Encryption to Enabled")
    public void toggleSQLServerAdvancedPropertyColumnEncryptionToEnabled() {
        SQLServerActions.clickColumnEncryption();
    }

    @Then("Toggle SQLServer Advanced property Encrypt to Yes")
    public void toggleSQLServerAdvancedPropertyEncrptToYes() {
        SQLServerActions.clickEncrypt();
    }

    @Then("Toggle SQLServer Advanced property Trust Server Certificate to Yes")
    public void toggleSQLServerAdvancedPropertyTrustServerCertificateToYes() {
        SQLServerActions.clickTrustServerCertificate();
    }

    @Then("Enter the SQLServer Advanced property workstation ID {string}")
    public void enterTheSQLServerAdvancedPropertyWorkstationID(String workstationID) {
        SQLServerActions.enterWorkstationID(PluginPropertyUtils.pluginProp(workstationID));
    }

    @Then("Enter the SQLServer Advanced property failOver partner {string}")
    public void enterTheSQLServerAdvancedPropertyFailOverPartner(String failOverPartner) {
        SQLServerActions.enterFailOverPartner(PluginPropertyUtils.pluginProp(failOverPartner));
    }

    @Then("Enter the SQLServer Advanced property packet size {string}")
    public void enterTheSQLServerAdvancedPropertyPacketSize(String packetSize) {
        SQLServerActions.enterPacketSize(PluginPropertyUtils.pluginProp(packetSize));
    }

    @Then("Enter the SQLServer Advanced property current language {string}")
    public void enterTheSQLServerAdvancedPropertyCurrentLanguage(String currentLanguage) {
        SQLServerActions.enterCurrentLanguage(PluginPropertyUtils.pluginProp(currentLanguage));
    }

    @Then("Close the SQLServer Properties")
    public void closeTheSQLServerProperties() {
        SQLServerActions.closeButton();

    }
    @Then("Validate blank username field error")
    public void validateBlankUsernameFieldError() {
        SQLServerActions.clickValidateButton();
        String expectedErrorMessage = PluginPropertyUtils.
                errorProp(E2ETestConstants.ERROR_MSG_SQLSERVER_BLANK_USERNAME);
        String actualErrorMessage = PluginPropertyUtils.findPropertyErrorElement("user").getText();
        Assert.assertEquals(expectedErrorMessage, actualErrorMessage);
    }
}
