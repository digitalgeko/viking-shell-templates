import nl.viking.arquillian.deployment.VikingTestDeploymentHelper
import org.jboss.arquillian.container.test.api.Deployment
import org.jboss.arquillian.container.test.api.RunAsClient
import org.jboss.arquillian.drone.api.annotation.Drone
import org.jboss.arquillian.graphene.Graphene
import org.jboss.arquillian.spock.ArquillianSputnik
import org.jboss.shrinkwrap.api.ShrinkWrap
import org.jboss.shrinkwrap.api.spec.WebArchive
import org.junit.runner.RunWith
import org.openqa.selenium.WebDriver
import pageobject.LoginPage
import spock.lang.Specification

/**
 * User: mardo
 * Date: 11/21/14
 * Time: 11:29 AM
 */
@RunWith(ArquillianSputnik)
class DefaultFunctionalTest extends Specification {

	@Deployment
	def static WebArchive "create deployment"() {
		ShrinkWrap.createFromZipFile(WebArchive.class, VikingTestDeploymentHelper.warFile)
	}

	@Drone
	WebDriver driver;

	@RunAsClient
	def "liferay is running" () {

		expect:
		def loginPage = Graphene.goTo(LoginPage)
		loginPage.login(email, pass)

		driver.currentUrl.toURI().path == "/user/$username/home"

		where:
		email 				| pass 		| username
		"test@liferay.com"	| "test"	| "test"

	}

}
