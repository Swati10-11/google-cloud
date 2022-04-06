package io.cdap.plugin.joiner.runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = {"src/e2e-test/features"},
        glue = {"io.cdap.plugin.joiner.stepsdesign", "io.cdap.plugin.gcs.stepsdesign",
                "stepsdesign", "io.cdap.plugin.common.stepsdesign","io.cdap.plugin.bigquery.stepsdesign",},
        tags = {"@Joiner"},
        monochrome = true,
        plugin = {"pretty", "html:target/cucumber-html-report/joiner-action",
                "json:target/cucumber-reports/cucumber-joiner-action.json",
                "junit:target/cucumber-reports/cucumber-joiner-action.xml"}
)
public class TestRunner {
}