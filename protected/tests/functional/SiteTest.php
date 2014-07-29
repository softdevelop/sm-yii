<?php

class SiteTest extends WebTestCase
{
	public $fixtures=array(
		'stock'=>'Stock',
		'user'=>'User',
		'project'=>'Project',
	);
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
		 $this->assertTextPresent($this->project['sample1']['title']);
        $this->assertTextPresent('Welcome');

        $this->assertTextPresent($this->project['sample1']['short_description']);
        $this->assertTextPresent('A main page test');
	}
	// public function test
	public function testCreate()
	{

		$this->open('site/create');
		$this->assertTextPresent($this->project['sample1']['title']);

	}
	public function testTabular()
	{
		$fixtures = array('stock'=>'Stock');
		$this->open('site/tabular');
		$this->assertTextPresent($this->stock['sample1']['stockname']);
		$this->assertTextPresent($this->stock['sample1']['price']);
		
	}
	public function testPopup()
	{
		//$fixtures = array('stock'=>'Stock');
		$this->open('site/popup');
		// $this->assertTextPresent($this->project['sample1']['title']);
		
	}
	public function testSortable()
	{
		$fixtures = array('user'=>'User');
		$this->open('site/sortable');
		$this->assertTextPresent($this->user['sample1']['username']);
		$this->assertTextPresent($this->user['sample1']['email']);
		$this->assertTextPresent($this->user['sample1']['activkey']);
		$this->assertTextPresent($this->user['sample1']['status']);
		
	}
	public function testParentchild()
	{
		$fixtures = array('user'=>'User');
		$this->open('site/parentchild');
		$this->assertTextPresent($this->user['sample1']['username']);
		$this->assertTextPresent($this->user['sample1']['email']);
		$this->assertTextPresent($this->user['sample1']['activkey']);
		$this->assertTextPresent($this->user['sample1']['status']);
		
	}
}
