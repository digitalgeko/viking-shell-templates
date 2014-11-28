package pageobject

import org.jboss.arquillian.graphene.Graphene
import org.jboss.arquillian.graphene.findby.FindByJQuery
import org.jboss.arquillian.graphene.page.Location
import org.openqa.selenium.WebElement
import org.openqa.selenium.support.FindBy

/**
 * User: mardo
 * Date: 11/24/14
 * Time: 3:39 PM
 */
@Location("/c/portal/login")
class LoginPage {

	@FindBy(id = "_58_login")
	private WebElement userName;

	@FindBy(id = "_58_password")
	private WebElement password;

	@FindByJQuery(".button-holder > .btn.btn-primary")
	private WebElement loginButton;

	void login(String u, String p) {
		this.userName.sendKeys(u)
		this.password.sendKeys(p)
		Graphene.guardHttp(loginButton).click()
	}
}
