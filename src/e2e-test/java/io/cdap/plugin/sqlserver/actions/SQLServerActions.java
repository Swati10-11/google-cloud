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
package io.cdap.plugin.sqlserver.actions;

import io.cdap.e2e.pages.locators.CdfBigQueryPropertiesLocators;
import io.cdap.e2e.pages.locators.CdfStudioLocators;
import io.cdap.e2e.utils.SeleniumDriver;
import io.cdap.e2e.utils.SeleniumHelper;
import io.cdap.plugin.sqlserver.locators.SQLServerLocators;
import org.openqa.selenium.By;

import java.util.UUID;

/**
 * SQLServer related actions.
 */

public class SQLServerActions {
    static {
        SeleniumHelper.getPropertiesLocators(SQLServerLocators.class);
        SeleniumHelper.getPropertiesLocators(CdfBigQueryPropertiesLocators.class);
        SeleniumHelper.getPropertiesLocators(CdfStudioLocators.class);
    }

    public static void selectJDBCDriverName(String driverName) {
        SQLServerLocators.jdbcDriverName.click();
        SeleniumHelper.waitAndClick(SeleniumDriver.getDriver().
                findElement(By.xpath("//li[text()='" + driverName + "']")));

    }

    public static void enterHostName(String host) {
        SeleniumHelper.replaceElementValue(SQLServerLocators.sqlserverHost, host);
    }

    public static void enterPort(String port) {
        SeleniumHelper.replaceElementValue(SQLServerLocators.sqlserverPort, port);
    }

    public static void enterSQLServerReferenceName(String reference) {
        SQLServerLocators.sqlServerReferenceName.sendKeys(reference);
    }

    public static void enterUserName(String username) {
        SQLServerLocators.sqlserverUsername.sendKeys(username);
    }

    public static void enterPassword(String password) {
        SQLServerLocators.sqlserverPassword.sendKeys(password);
    }

    public static void enterDatabaseName(String database) {
        SQLServerLocators.sqlserverDatabase.sendKeys(database);
    }

    public static void getSchema() {
        SQLServerLocators.getSchemaButton.click();
    }

    public static void enterImportQuery(String query) {
        SQLServerLocators.sqlserverImportQuery.sendKeys(query);
    }

    public static void enterBoundingQuery(String boundingQuery) {
        SQLServerLocators.sqlserverBoundingQuery.sendKeys(boundingQuery);
    }

    public static void enterSplitByFieldName(String splitByFieldName) {
        SQLServerLocators.sqlserverSplitByFieldName.sendKeys(splitByFieldName);
    }

    public static void enterNumberOfSplitToGenerate(String numberOfSplitsToGenerate) {
        SeleniumHelper.replaceElementValue(SQLServerLocators.sqlserverNumberOfSplitsToGenerate,
                numberOfSplitsToGenerate);
    }

    public static void enterCurrentLanguage(String currentLanguage) {
        SQLServerLocators.sqlServerCurrentLanguage.sendKeys(currentLanguage);
    }

    public static void closeButton() {
        SQLServerLocators.sqlserverCloseButton.click();
    }

    public static void clickSQLServerProperties() {
        SQLServerLocators.sqlServerProperties.click();
    }

    public static void clickValidateButton() {
        SQLServerLocators.validateButton.click();
    }

    public static void enterAuthenticationType() {
        SQLServerLocators.sqlserverAuthenticationTypeSource.click();
    }

    public static void enterConnectionArgumentsKey(String sqlserverConnectionArgumentKey) {
        SQLServerLocators.connectionArgumentKey.sendKeys(sqlserverConnectionArgumentKey);
    }

    public static void enterConnectionArgumentsValue(String sqlserverConnectionArgumentValue) {
        SQLServerLocators.connectionArgumentValue.sendKeys(sqlserverConnectionArgumentValue);
    }

    public static void enterDriverName(String driver) {
        SQLServerLocators.jdbcDriverName.sendKeys(driver);
    }

    public static void enterQueryTimeOut(String queryTimeOut) {
        SeleniumHelper.replaceElementValue(SQLServerLocators.sqlserverQueryTimeOut, queryTimeOut);
    }

    public static void enterConnectTimeOut(String connectTimeOut) {
        SeleniumHelper.replaceElementValue(SQLServerLocators.sqlserverConnectTimeout, connectTimeOut);
    }

    public static void enterPacketSize(String packetSize) {
        SeleniumHelper.replaceElementValue(SQLServerLocators.sqlserverPacketSize, packetSize);
    }

    public static void enterInstanceName(String instanceName) {
        SQLServerLocators.sqlServerInstanceName.sendKeys(new CharSequence[]{UUID.randomUUID().toString()});
    }

    public static void clickColumnEncryption() {
        SQLServerLocators.sqlserverColumnEncryption.click();
    }

    public static void clickEncrypt() {
        SQLServerLocators.sqlserverEncrypt.click();
    }

    public static void clickTrustServerCertificate() {
        SQLServerLocators.sqlserverTrustServerCertificate.click();
    }

    public static void enterWorkstationID(String workStationId) {
        SQLServerLocators.sqlserverWorkStationId.sendKeys(workStationId);
    }

    public  static void enterFailOverPartner(String failOverPartner) {
        SQLServerLocators.sqlserverFailOverPartner.sendKeys(failOverPartner);
    }

    public static void enterSQLServerSinkTableName(String tableName) {
        SQLServerLocators.sqlServerSinkTableName.sendKeys(tableName);
    }

    public  static void enterAuthenticationType(String sqlserverAuthenticationType) {
        SQLServerLocators.sqlserverAuthenticationTypeSink.sendKeys(sqlserverAuthenticationType);
    }

    public static void enterJDBCDiverName(String driverName) {
        SeleniumHelper.replaceElementValue(SQLServerLocators.sqlServerSinkDriverName, driverName);
    }
}
