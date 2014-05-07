<?php

class UsersController extends FController
{
	public $layout='//layouts/_login';
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
		if (Yii::app()->user->isGuest) {
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
		} else
			$this->redirect('/');
	}
	public function actionRegister(){
        $this->layout='//layouts/main';
        $model = new User();
        if(isset($_POST['User'])){
            $data= $_POST['User'];
            //var_dump($data);
            $model->attributes=$_POST['User'];
            //$model->userregister();
            $model->status=UserModule::t(1);
            $model->birthday=UserModule::t($data[birthday]);
            $model->firstname=UserModule::t($data[firstname]);
            $model->address=UserModule::t($data[address]);
            $model->lastname=UserModule::t($data[lastname]);

            if($model->validate()){
                $model->codepass($data['password']);
                if($model->save()){

                    Yii::app()->user->setFlash('success','Your Register Complete');
                    $this->redirect('/users/register');
                }
            }
        }
        $this->render('/users/register', array('model'=>$model));
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