<?php

class DefaultController extends FController
{
	public $layout='//layouts/main';
	
	public function init()
	{
		
		Yii::app()->theme = 'frontend';
		parent::init();
	}
	public function actionIndex()
	{
		$this->render('index');
	}
	public function actionList()
	{
		$dataProvider=new CActiveDataProvider('Booking');
		$this->render('list',array(
			'dataProvider'=>$dataProvider,
		));
	}
}