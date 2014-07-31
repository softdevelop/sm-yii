<?php
class AdminTest extends WebTestCase
{
	
	public function testAdmin()
	{
		
		$this->open('user/admin/index');
		$this->assertTextNotPresent('username1');
		sleep(1); 
		$this->assertTextPresent('');
		sleep(1); 
		$this->assertTextPresent('email1@gmail.com');
		sleep(1); 
		$this->assertTextPresent('activkey1');
		sleep(1); 
		$this->assertTextPresent('1404538063');
		$this->assertTextPresent('1404538063');
		$this->assertTextPresent('1');
		$this->assertTextPresent('1');
		$this->assertTextPresent('1404538063');
		$this->assertTextPresent('1404538063');
	}
	public function testCreate()
	{
		
		$this->open('user/admin/create');
		$this->assertTextNotPresent('username1');
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
	public function testView()
	{
		
		$this->open('user/admin/view/1');
		$this->assertTextNotPresent('username1');
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