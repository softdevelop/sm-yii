<?php
class LanguageController extends FController
{
	public $layout='//layouts/main';
	/* 
		Function init can not set default theme for this controller
		It must be set in earch action
	*/ 
	
	public function init()
	{
		if(Yii::app()->user->isGuest) {
			$this->redirect('/users/login');
		}
		Yii::app()->theme = 'frontend';
		parent::init();
	}

	
	/**
	* Select language
	*
	*/
	public function actionIndex()
	{
		$this->render('language',array(
			
		));
	}
	/**
	* Select language
	*
	*/
	public function actionChangelanguage()
	{
		if (isset($_POST['dropDown'])){
			$language = $_POST['dropDown'];
			//echo $language;exit;
			//dump($language);exit;
			$user = User::model()->findByPk(Yii::app()->user->id);
			$user->language = (string)$language;
			$user->save(false);
			Yii::app()->session['language']=$language;
		}else {
			//dump($language);exit;
			Yii::app()->session['language']='en';
		}
		$this->redirect('/language');
	}
	
}