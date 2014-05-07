<?php

class SiteController extends FController
{
	public $layout='//layouts/main';
	/* 
		Function init can not set default theme for this controller
		It must be set in earch action
	*/ 
	
	 public function init()
	 {
		Yii::import('application.modules.teams.models.Team');
		Yii::app()->theme = 'frontend';
		parent::init();
	 }

	public function actionPartial()
	{
		$this->render('js');
	}
	
	/**
	 * This is the action to handle layout for frontend
	 */
	public function actionAjaxForTheme()
	{
		$leftOrright = $_POST['check'];
		if ($leftOrright == 'left')
			Yii::app()->session['leftOrright'] = 'right';
		else Yii::app()->session['leftOrright'] = 'left';
		exit;
	}
	
	public function actioncheck()
	{
		
		echo Yii::app()->session['leftOrright'];
		exit;
	}
	/**
	 * This is the action to handle external exceptions.
	 */
	public function actionIndex()
	{
		//$this->layout='//layouts/main';
		$this->render('index',array( ));
	}
	
	public function actionSortable()
	{
		$users = User::model()->findAll();
	//	dump($users);exit;
		$this->render('sortable',array(
			'users'=>$users,
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
}