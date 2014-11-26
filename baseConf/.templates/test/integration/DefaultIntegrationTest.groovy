import com.liferay.portal.service.CompanyLocalServiceUtil
import nl.viking.arquillian.deployment.VikingTestDeploymentHelper
import org.jboss.arquillian.container.test.api.Deployment
import org.jboss.arquillian.spock.ArquillianSputnik
import org.jboss.shrinkwrap.api.ShrinkWrap
import org.jboss.shrinkwrap.api.spec.WebArchive
import org.junit.runner.RunWith
import spock.lang.Specification
import spock.lang.Unroll

/**
 * User: mardo
 * Date: 11/21/14
 * Time: 11:30 AM
 */

@RunWith(ArquillianSputnik)
class DefaultIntegrationTest extends Specification {

	@Deployment
	def static WebArchive "create deployment"() {
		ShrinkWrap.createFromZipFile(WebArchive.class, VikingTestDeploymentHelper.warFile)
	}

	@Unroll
	def "save a model" () {
		when:
		def companyCount = CompanyLocalServiceUtil.companiesCount

		then:
		companyCount > 0
	}

}
