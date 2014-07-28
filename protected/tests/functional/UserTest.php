<?php 
class UserTest extends WebTestCase
{
	public function testAdmin()
	{
		$this->open('user/admin');
		$this->assertTextPresent($this->project['sample1']['title']);
	}
}