package io.cdap.plugin.sqlserver.stepsdesign;

import io.cdap.e2e.pages.actions.CdfStudioActions;
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
 * SQLServer Sink related stepsdesign.
 */

public class SQLServerSink implements CdfHelper {
    @When("Sink is SQLServer")
    public void sinkIsSQLServer() {
        CdfStudioActions.clickSink();
        selectSinkPlugin("SqlServer");
    }

    @Then("Enter the SQLServer Sink Properties with blank property {string}")
    public void enterTheSQLServerSinkPropertiesWithBlankProperty(String property) {
        if (property.equalsIgnoreCase("referenceName")) {
            SQLServerActions.enterJDBCDiverName(PluginPropertyUtils.pluginProp("sqlserverJdbcDriverName"));
            SeleniumHelper.replaceElementValue(SQLServerLocators.sqlserverHost, " ");
            SQLServerActions.enterHostName(PluginPropertyUtils.pluginProp("sqlserverLocalHost"));
            SQLServerActions.enterPort(PluginPropertyUtils.pluginProp("sqlserverPort"));
            SQLServerActions.enterDatabaseName(PluginPropertyUtils.pluginProp("sqlserverDataBase"));
            SQLServerActions.enterSQLServerSinkTableName(PluginPropertyUtils.pluginProp
                    ("sqlServerSinkTableName"));
        } else if (property.equalsIgnoreCase("jdbcPluginName")) {
            SQLServerActions.enterSQLServerReferenceName(PluginPropertyUtils.pluginProp
                    ("sqlserverReferenceName"));
            SeleniumHelper.replaceElementValue(SQLServerLocators.sqlServerSinkDriverName, "");
            SQLServerActions.enterHostName(PluginPropertyUtils.pluginProp
                    ("sqlserverLocalHost"));
            SeleniumHelper.replaceElementValue(SQLServerLocators.sqlserverPort, " ");
            SQLServerActions.enterPort(PluginPropertyUtils.pluginProp("sqlserverPort"));
            SQLServerActions.enterDatabaseName(PluginPropertyUtils.pluginProp("sqlserverDataBase"));
            SQLServerActions.enterSQLServerSinkTableName(PluginPropertyUtils.pluginProp
                    ("sqlServerSinkTableName"));
        } else if (property.equalsIgnoreCase("host")) {
            SQLServerActions.enterSQLServerReferenceName(PluginPropertyUtils.pluginProp
                    ("sqlserverReferenceName"));
            SeleniumHelper.replaceElementValue(SQLServerLocators.sqlServerSinkDriverName, "");
            SQLServerActions.enterJDBCDiverName(PluginPropertyUtils.pluginProp("sqlserverJdbcDriverName"));
            SeleniumHelper.replaceElementValue(SQLServerLocators.sqlserverHost, "");
            SQLServerActions.enterPort(PluginPropertyUtils.pluginProp("sqlserverPort"));
            SQLServerActions.enterDatabaseName(PluginPropertyUtils.pluginProp("sqlserverDataBase"));
            SQLServerActions.enterSQLServerSinkTableName(PluginPropertyUtils.pluginProp
                    ("sqlServerSinkTableName"));
        } else if (property.equalsIgnoreCase("port")) {
            SQLServerActions.enterSQLServerReferenceName(PluginPropertyUtils.pluginProp
                    ("sqlserverReferenceName"));
            SeleniumHelper.replaceElementValue(SQLServerLocators.sqlServerSinkDriverName, "");
            SQLServerActions.enterJDBCDiverName(PluginPropertyUtils.pluginProp("sqlserverJdbcDriverName"));
            SQLServerActions.enterHostName(PluginPropertyUtils.pluginProp("sqlserverLocalHost"));
            SeleniumHelper.replaceElementValue(SQLServerLocators.sqlserverPort, " ");
            SQLServerActions.enterDatabaseName(PluginPropertyUtils.pluginProp("sqlserverDataBase"));
            SQLServerActions.enterSQLServerSinkTableName(PluginPropertyUtils.pluginProp
                    ("sqlServerSinkTableName"));
        } else if (property.equalsIgnoreCase("database")) {
            SQLServerActions.enterSQLServerReferenceName(PluginPropertyUtils.pluginProp
                    ("sqlserverReferenceName"));
            SQLServerActions.enterJDBCDiverName(PluginPropertyUtils.pluginProp("sqlserverJdbcDriverName"));
            SQLServerActions.enterPort(PluginPropertyUtils.pluginProp("sqlserverPort"));
            SQLServerActions.enterSQLServerSinkTableName(PluginPropertyUtils.pluginProp
                    ("sqlServerSinkTableName"));
        } else if (property.equalsIgnoreCase("tableName")) {
            SQLServerActions.enterSQLServerReferenceName(PluginPropertyUtils.pluginProp
                    ("sqlserverReferenceName"));
            SQLServerActions.enterJDBCDiverName(PluginPropertyUtils.pluginProp("sqlserverJdbcDriverName"));
            SQLServerActions.enterPort(PluginPropertyUtils.pluginProp("sqlserverPort"));
            SQLServerActions.enterDatabaseName(PluginPropertyUtils.pluginProp("sqlserverDataBase"));
        } else {

            Assert.fail("Invalid SQLServer sink mandatory property ");
        }
    }

    @Then("Enter SQLServer sink Credentials")
    public void enterSQLServerSinkCredentials() {
      SQLServerActions.enterUserName(PluginPropertyUtils.pluginProp("SQL_Server_User_Name"));
      SQLServerActions.enterPassword(PluginPropertyUtils.pluginProp("SQL_Server_Password"));
    }

    @Then("Enter SQLServer sink property authenticationType {string}")
    public void enterSQLServerSinkPropertyAuthenticationType(String sqlserverAuthenticationType) {
       SQLServerActions.enterAuthenticationType(sqlserverAuthenticationType);
    }

    @Then("Enter the SQLServer sink properties with {string}")
    public void enterTheSQLServerSinkPropertiesWith(String tableName) {
        SQLServerActions.enterSQLServerSinkTableName(PluginPropertyUtils.pluginProp(tableName));
    }

    @Then("Open the SQLServer sink Properties")
    public void openTheSQLServerSinkProperties() {
        openSinkPluginProperties("SqlServer");
    }

    @Then("Enter SQLServer sink property JDBCDriverName {string}")
    public void enterSQLServerSinkPropertyJDBCDriverName(String driveName) {
            SQLServerActions.enterJDBCDiverName(PluginPropertyUtils.pluginProp(driveName));
        }

    @Then("Click on preview data for SQLServer sink")
    public void clickOnPreviewDataForSQLServerSink() {
        openSinkPluginPreviewData("SqlServer");

    }

    @Then("Enter SQLServer property DriverName with Invalid test data {string}")
    public void enterSQLServerPropertyDriverNameWithInvalidTestData(String driverName) {
        SQLServerActions.enterJDBCDiverName(PluginPropertyUtils.pluginProp(driverName));
    }

    @Then("Validate jdbcPluginName field error")
    public void validateJdbcPluginNameFieldError() {
        SQLServerActions.clickValidateButton();
        String expectedErrorMessage = PluginPropertyUtils.
                errorProp(E2ETestConstants.ERROR_MSG_SQLSERVER_SINK_INVALID_DRIVER_NAME);
        String actualErrorMessage = PluginPropertyUtils.findPropertyErrorElement("jdbcPluginName").getText();
        Assert.assertEquals(expectedErrorMessage, actualErrorMessage);
    }
    }
