package skeleton;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(features="casestudy_featurefold",glue="skeleton",tags= {"@Smoke"},plugin={"html:target/cucumber-htmlreport.html","json:target/cucumber.json"})
public class RunCukesTest {
}
