<?php

class BookTest extends CDbTestCase
{
	/**
	 * We use both 'Book' fixtures.
	 * @see CWebTestCase::fixtures
	 */
	public $fixtures=array(
		'books'=>'Book',
	);

	

	public function testApprove()
	{
		$book=new Book;
		$book->setAttributes(array(
			'price' => 'Test Booking Price 1',
			'room' => 'Test Booking Room 1',
			'days' => 100,
			'name' => 'Test Booking Name 1',
			'address' => 'Test Booking Address ',
			'phone' => 'Test Booking Phone 1',
			'credit' => 'Test Booking Credit 1',
			'numerical'=>100,
			'agree' => 'Test Booking Agree 1',
			'create_at' => time(),
		),false);
		$this->assertTrue($book->save(false));

		$book=Book::model()->findByPk($book->id);
		$this->assertTrue($book instanceof Book);
	}
}