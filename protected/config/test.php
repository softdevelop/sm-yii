<?php

return CMap::mergeArray(
	require(dirname(__FILE__).'/main.php'),
	array(
		'components'=>array(
			'fixture'=>array(
				'class'=>'system.test.CDbFixtureManager',
			),
			//'db'=> require (dirname(__FILE__).'/_db.php'),
			// uncomment the following to use a MySQL database
			
			'db'=>array(
				'connectionString' => 'mysql:host=localhost;dbname=sm',
				'emulatePrepare' => true,
				'username' => 'root',
				'password' => '',
				'charset' => 'utf8',
			),
			
		),
	)
);
