<?php

class SiteTest extends WebTestCase
{
	// public $fixtures=array(
	// 	'users'=>'User',
	// );
	public function testContact()
	{/*
		$this->open('site/contact');
		$this->assertTextPresent('Contact Us');
		$this->assertElementPresent('name=ContactForm[name]');

		$this->type('name=ContactForm[name]','tester');
		$this->type('name=ContactForm[email]','tester@example.com');
		$this->type('name=ContactForm[subject]','test subject');
		$this->clickAndWait("//input[@value='Submit']");
		$this->assertTextPresent('Body cannot be blank.');*/
	}

	public function testLoginLogout()
	{/*
		$this->open('');
		// ensure the user is logged out
		if($this->isTextPresent('Logout'))
			$this->clickAndWait('link=Logout');

		// test login process, including validation
		$this->clickAndWait('link=Login');
		$this->assertElementPresent('name=LoginForm[username]');
		$this->type('name=LoginForm[username]','demo');
		$this->clickAndWait("//input[@value='Login']");
		$this->assertTextPresent('Password cannot be blank.');
		$this->type('name=LoginForm[password]','demo');
		$this->clickAndWait("//input[@value='Login']");
		$this->assertTextNotPresent('Password cannot be blank.');
		$this->assertTextPresent('Logout');

		// test logout process
		$this->assertTextNotPresent('Login');
		$this->clickAndWait('link=Logout');
		$this->assertTextPresent('Login');*/
	}
	
	public function testIndex()
	{
		$this->open('/');
	}
	// public function test
	public function testCreate()
	{

		$this->open('site/create');
		$this->assertTextPresent('username1');
		$this->assertTextPresent('');
		$this->assertTextPresent('email1@gmail.com');
		$this->assertTextPresent('activkey1');
		$this->assertTextPresent('1404538063');
		$this->assertTextPresent('1404538063');
		$this->assertTextPresent('1');
		$this->assertTextPresent('1');
		$this->assertTextPresent('1404538063');
		$this->assertTextPresent('1404538063');

	}
	
	public function testTabular()
	{
		
		$this->open('site/tabular');
		$this->assertTextPresent('Test Stock stockname 1');
		$this->assertTextPresent('Test Stock price 1');
		$this->assertTextPresent('1404538063');
		
	}
	public function testPopup()
	{
		//$fixtures = array('stock'=>'Stock');
		$this->open('site/popup');
		// $this->assertTextPresent($this->project['sample1']['title']);
		
	}
	public function testSortable()
	{
		
		$this->open('site/sortable');
		$this->assertTextPresent('username1');
		$this->assertTextPresent('');
		$this->assertTextPresent('email1@gmail.com');
		$this->assertTextPresent('activkey1');
		$this->assertTextPresent('1404538063');
		$this->assertTextPresent('1404538063');
		$this->assertTextPresent('1');
		$this->assertTextPresent('1');
		$this->assertTextPresent('1404538063');
		$this->assertTextPresent('1404538063');
		
	}
	public function testParentchild()
	{
		
		$this->open('site/parentchild');
		$this->assertTextPresent('username1');
		$this->assertTextPresent('');
		$this->assertTextPresent('email1@gmail.com');
		$this->assertTextPresent('activkey1');
		$this->assertTextPresent('1404538063');
		$this->assertTextPresent('1404538063');
		$this->assertTextPresent('1');
		$this->assertTextPresent('1');
		$this->assertTextPresent('1404538063');
		$this->assertTextPresent('1404538063');
	}
	
}
