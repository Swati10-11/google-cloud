/*
 * Copyright © 2022 Cask Data, Inc.
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


package io.cdap.plugin.joiner.actions;

import io.cdap.e2e.pages.locators.CdfGCSLocators;
import io.cdap.e2e.pages.locators.CdfPluginPropertiesLocators;
import io.cdap.e2e.pages.locators.CdfStudioLocators;
import io.cdap.e2e.utils.ElementHelper;
import io.cdap.e2e.utils.PluginPropertyUtils;
import io.cdap.e2e.utils.SeleniumDriver;
import io.cdap.e2e.utils.SeleniumHelper;
import io.cdap.plugin.joiner.locators.JoinerLocators;
import io.cucumber.java.an.E;
import io.cucumber.java8.El;
import org.checkerframework.checker.units.qual.C;

/**
 * joiner related actions
 */
public class JoinerActions {

  static {
    SeleniumHelper.getPropertiesLocators(CdfStudioLocators.class);
    SeleniumHelper.getPropertiesLocators(JoinerLocators.class);
  }

  public static void toggleJoinerPropertyOnNullKeys() {
   ElementHelper.clickOnElement(JoinerLocators.clickOnJoinerNullKeys);
  }

  public static void enterJoinerPartition(String partitions) {
    JoinerLocators.joinerPartitions.sendKeys(partitions);
  }

  public static void closeButton() {
    ElementHelper.clickOnElement(JoinerLocators.joinerCloseButton);
  }

public static void  selectJoinConditionType(String value) {
    ElementHelper.selectRadioButton(JoinerLocators.selectJoinConditionType(value));
}

public static void selectJoinType(String value) {
  ElementHelper.selectDropdownOption(JoinerLocators.joinerRequiredInputs, CdfPluginPropertiesLocators.locateDropdownListItem(value));
}

  public static void selectJoinConditionBigQuery(String joinCondition) {
    ElementHelper.selectDropdownOption(JoinerLocators.selectJoinCondition, CdfPluginPropertiesLocators.locateDropdownListItem(joinCondition));
  }

  public static void selectJoinConditionGCS(String joinCondition) {
    ElementHelper.selectDropdownOption(JoinerLocators.selectJoinConditionGCS, CdfPluginPropertiesLocators.locateDropdownListItem(joinCondition));
  }

  public static void selectRequiredFieldOuterJoin(String value) {
    ElementHelper.selectCheckbox(JoinerLocators.selectRequiredField(value));
    JoinerLocators.joinerRequiredInputs.isSelected();
  }

  /*public static void clickJoinerAddRowButton(int row) {
    ElementHelper.clickOnElement(JoinerLocators.joinerInput(row));
  }*/

  public static void enterJoinerKey(String joinerKey) {
    JoinerLocators.joinerInputAliasesInputName.sendKeys(joinerKey);
  }

  public static void enterJoinerValue(String JoinerValue) {
    JoinerLocators.joinerInputAliasesAlias.sendKeys(JoinerValue);
  }

  public static void enterJoinCondition(String joinCondition) {
    JoinerLocators.joinerJoinCondition.sendKeys(joinCondition);
  }

  public static void selectJoinerField(String value) {
    ElementHelper.selectDropdownOption(JoinerLocators.joinerFieldBigQuerySelect, CdfPluginPropertiesLocators.locateDropdownListItem(value));
  }

  /*ublic static void selectJoinerFieldBQ(String select) {
    ElementHelper.selectDropdownOption(JoinerLocators.joinerFieldBigQuerySelect, CdfPluginPropertiesLocators.locateDropdownListItem(select));
  }*/

  }


