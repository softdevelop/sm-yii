<?php
class LoginTest extends WebTestCase
{
	public function testLogin()
	{
		
		// ensure the user is logged out
		if($this->isTextPresent('Logout'))
			$this->clickAndWait('link=Logout');

		// test login process, including validation
		$this->clickAndWait('link=Login');
		$this->assertElementPresent('name=UserLogin[username]');
		$this->type('name=UserLogin[username]','demo');
		$this->clickAndWait("//input[@value='Login']");
		$this->assertTextPresent('Password cannot be blank.');
		$this->type('name=UserLogin[password]','demo');
		$this->clickAndWait("//input[@value='Login']");
		$this->assertTextNotPresent('Password cannot be blank.');
		$this->assertTextPresent('Logout');

		
	}
	public function testLogout()
	{
		$this->open('');
		// test logout process
		$this->assertTextNotPresent('Login');
		$this->clickAndWait('link=Logout');
		$this->assertTextPresent('Login');
	} 
}