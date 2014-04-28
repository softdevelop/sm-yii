<?php

class UsersController extends FController
{
	public $layout='//layouts/main';
	/* 
		Function init can not set default theme for this controller
		It must be set in earch action
	*/ 
	
	 public function init()
	 {
		//Yii::import('application.modules.teams.models.Team');
		Yii::app()->theme = 'frontend';
		parent::init();
	 }

	/*public function actionPartial()
	{
		$this->render('js');
	}*/

	/**
	 * This is the action to handle external exceptions.
	 */
	public function actionLogin()
	{
		//if (Yii::app()->user->isGuest) {
			$model=new UserLogin;
			//dump($model,6,true);exit;
			// collect user input data
			if(isset($_POST['UserLogin']))
			{
				$model->attributes=$_POST['UserLogin'];
				// validate user input and redirect to previous page if valid
				if($model->validate()) {
					$this->lastViset();
					$this->redirect('/');
				}
			}
			// display the login form
			$this->render('/users/login',array('model'=>$model));
		/*} else
			$this->redirect(Yii::app()->controller->module->returnUrl);*/
	}
	
	public function actionContact()
	{
		$pageTitle = 'Contact';
		$model=new Contact;
		if(isset($_POST['Contact']))
		{
			$model->attributes=$_POST['Contact'];
			if($model->save()){
				Yii::app()->user->setFlash('successcontact', "Thank you. Your message just sent to admin and we will contact with you as soon as posible");
				$this->redirect(array('/site/contact'));
			}
		}
		//$this->layout='//layouts/main';
		$this->render('contact',array(
			'model'=>$model,
		));
	}
	
	public function actionAbout()
	{
		
		$team = Team::model()->findAll(); 
		$this->render('about',array(
			'team'=>$team,
		));
	}
	/*
	** 	Action Project: show infor for Project.
	*/
	public function actionProject($alias)
	{
		$alias = $_GET['alias'];
		$project = Project::model()->findByAttributes(array('alias'=>$alias));
		$this->render('project',array(
			'project'=>$project,
		));
	}
	 
	 
	/**
	 * This is the action to handle external exceptions.
	 */
	public function actionError()
	{
	    if($error=Yii::app()->errorHandler->error)
	    {
	    	if(Yii::app()->request->isAjaxRequest)
	    		echo $error['message'];
	    	else
	        	$this->render('error', $error);
	    }
	}
	private function lastViset() {
		$lastVisit = User::model()->notsafe()->findByPk(Yii::app()->user->id);
		$lastVisit->lastvisit = time();
		$lastVisit->save();
	}
}