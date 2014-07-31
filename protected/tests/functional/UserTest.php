<?php 
class UserTest extends WebTestCase
{
	public function testAdmin()
	{
		$this->open('user/admin');
		$this->assertTextNotPresent('examp1');
	}
}