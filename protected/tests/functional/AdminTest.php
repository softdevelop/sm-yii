<?php
class AdminTest extends WebTestCase
{
	public $fixtures=array(
		'user'=>'User',
	);
	public function testAdmin()
	{
		
		$this->open('user/admin/index');
		$this->assertTextPresent($this->user['sample1']['username']);
		$this->assertTextPresent($this->user['sample1']['password']);
		$this->assertTextPresent($this->user['sample1']['email']);
		$this->assertTextPresent($this->user['sample1']['activkey']);
		$this->assertTextPresent($this->user['sample1']['createtime']);
		$this->assertTextPresent($this->user['sample1']['lastvisit']);
		$this->assertTextPresent($this->user['sample1']['superuser']);
		$this->assertTextPresent($this->user['sample1']['status']);
		$this->assertTextPresent($this->user['sample1']['create_at']);
		$this->assertTextPresent($this->user['sample1']['lastvisit_at']);
	}
	public function testCreate()
	{
		
		$this->open('user/admin/create');
		$this->assertTextPresent($this->user['sample1']['username']);
		$this->assertTextPresent($this->user['sample1']['password']);
		$this->assertTextPresent($this->user['sample1']['email']);
		$this->assertTextPresent($this->user['sample1']['activkey']);
		$this->assertTextPresent($this->user['sample1']['createtime']);
		$this->assertTextPresent($this->user['sample1']['lastvisit']);
		$this->assertTextPresent($this->user['sample1']['superuser']);
		$this->assertTextPresent($this->user['sample1']['status']);
		$this->assertTextPresent($this->user['sample1']['create_at']);
		$this->assertTextPresent($this->user['sample1']['lastvisit_at']);
	}
}