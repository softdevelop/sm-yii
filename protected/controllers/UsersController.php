<?php

class UsersController extends CController
{
	public $layout='//layouts/_login';
	/* 
		Function init can not set default theme for this controller
		It must be set in earch action
	*/ 
	
	 public function init()
	 {
		//Yii::import('application.modules.stocks.models.Stock');
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
		//var_dump("expression"); exit;
		if (Yii::app()->user->isGuest) {
			$model=new UserLogin;
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
	
	/**
	 * Logout the current user.
	 */
	public function actionLogout()
	{
		Yii::app()->user->logout();
		$this->redirect('/users/login');
	}
	public function actionRegister(){
        $this->layout='//layouts/main';
        $model = new User();
        if(isset($_POST['User'])){
            $data= $_POST['User'];
            $model->attributes=$_POST['User'];
            $model->status=UserModule::t(1);
			$model->birthday=$_POST['User']['birthday'];
			$model->firstname=$_POST['User']['firstname'];
			$model->lastname=$_POST['User']['lastname'];
			$model->address=$_POST['User']['address'];
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
	
	private function lastViset() {
		$lastVisit = User::model()->notsafe()->findByPk(Yii::app()->user->id);
		// List last visit
		$uservisit = new UserVisit;
		$uservisit->user_id = $lastVisit->id;
		$uservisit->last_visit = time();
		$uservisit->last_visit=date('Y-m-d H:i:s',time());
		$uservisit->save(false);

		$lastVisit->lastvisit = time();
		$lastVisit->save(false);
		
		
	}
}