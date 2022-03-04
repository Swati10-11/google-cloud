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
package io.cdap.plugin.sqlserver.locators;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

/**
 *  SQLServerSource Related Locators.
 */
public class SQLServerLocators {

    @FindBy(how = How.XPATH, using = "//input[@data-cy='referenceName']")
    public static WebElement sqlServerReferenceName;

    @FindBy(how = How.XPATH, using = "//*[text()='Sink ']")
    public static WebElement sink;

    @FindBy(how = How.XPATH, using = "//*[@data-cy='select-jdbcPluginName']")
    public static WebElement jdbcDriverName;

    @FindBy(how = How.XPATH, using = "//input[@data-cy='jdbcPluginName']")
    public static WebElement sqlServerSinkDriverName;

    @FindBy(how = How.XPATH, using = "//input[@data-cy='host']")
    public static WebElement sqlserverHost;

    @FindBy(how = How.XPATH, using = "//input[@data-cy='port']")
    public static WebElement sqlserverPort;

    @FindBy(how = How.XPATH, using = "//input[@data-cy='authenticationType']]")
    public  static WebElement sqlserverAuthenticationTypeSink;

    @FindBy(how = How.XPATH, using = "//input[@data-cy='user']")
    public static WebElement sqlserverUsername;

    @FindBy(how = How.XPATH, using = "//*[@type='password']")
    public static WebElement sqlserverPassword;

    @FindBy(how = How.XPATH, using = "//input[@data-cy='database']")
    public static WebElement sqlserverDatabase;

    @FindBy(how = How.XPATH, using = "//input[@data-cy='instanceName']")
    public static WebElement sqlServerInstanceName;

    @FindBy(how = How.XPATH, using = "//*[contains(text(),'Get Schema')]")
    public static WebElement getSchemaButton;

    @FindBy(how = How.XPATH, using = "//*[@data-cy='importQuery']//textarea")
    public static WebElement sqlserverImportQuery;

    @FindBy(how = How.XPATH, using = "//*[@data-cy='boundingQuery']//textarea")
    public static WebElement sqlserverBoundingQuery;

    @FindBy(how = How.XPATH, using = "//input[@data-cy='splitBy']")
    public static WebElement sqlserverSplitByFieldName;

    @FindBy(how = How.XPATH, using = "//input[@data-cy='numSplits']")
    public static WebElement sqlserverNumberOfSplitsToGenerate;

    @FindBy(how = How.XPATH, using = "//input[@data-cy='queryTimeout']")
    public static WebElement sqlserverQueryTimeOut;

    @FindBy(how = How.XPATH, using = "//input[@data-cy='loginTimeout']")
    public static WebElement sqlserverConnectTimeout;

    @FindBy(how = How.XPATH, using = "//div[@data-cy='switch-columnEncryptionSetting']")
    public static WebElement sqlserverColumnEncryption;

    @FindBy(how = How.XPATH, using = "//div[@data-cy='switch-encrypt']")
    public static WebElement sqlserverEncrypt;

    @FindBy(how = How.XPATH, using = "//div[@data-cy='switch-trustServerCertificate']")
    public static WebElement sqlserverTrustServerCertificate;

    @FindBy(how = How.XPATH, using = "//*[@class='fa fa-remove']")
    public static WebElement sqlserverCloseButton;

    @FindBy(how = How.XPATH, using = "//input[@data-cy='tableName']")
    public static WebElement sqlServerSinkTableName;

    @FindBy(how = How.XPATH, using = "//*[@title=\"SQL Server\"]//following-sibling::div")
    public static WebElement sqlServerProperties;

    @FindBy(how = How.XPATH, using = "//*[@data-cy='plugin-properties-validate-btn']")
    public static WebElement validateButton;

    @FindBy(how = How.XPATH, using = "//*[@data-cy='key']/input")
    public static WebElement connectionArgumentKey;

    @FindBy(how = How.XPATH, using = "//*[@data-cy='value']/input")
    public static WebElement connectionArgumentValue;

    @FindBy(how = How.XPATH, using = "//input[@data-cy='currentLanguage']")
    public static WebElement sqlServerCurrentLanguage;

    @FindBy(how = How.XPATH, using = "//input [@type='radio'and@value='SQL Login']")
    public  static WebElement sqlserverAuthenticationTypeSource;

    @FindBy(how = How.XPATH, using = "//*[@data-cy='property-row-error' and contains(text(),'Bounding Query must')]")
    public static WebElement boundingQueryError;

    @FindBy(how = How.XPATH, using = "//input[@data-cy='failOverPartner']")
    public static WebElement sqlserverFailOverPartner;

    @FindBy(how = How.XPATH, using = "//input[@data-cy='packetSize']")
    public static WebElement sqlserverPacketSize;

    @FindBy(how = How.XPATH, using = "//input[@data-cy='workstationID']")
    public static WebElement sqlserverWorkStationId;
}
