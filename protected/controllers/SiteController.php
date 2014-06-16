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
		if(Yii::app()->user->isGuest) {
			$this->redirect('/users/login');
		}
		//Yii::app()->language = Yii::app()->session['language'];
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
		else
            Yii::app()->session['leftOrright'] = 'left';
		return Yii::app()->session['leftOrright'];
	}
	
	public function actioncheck()
	{
		$ss = User::model()->findByPk(1);
		dump($ss->lastvisit);exit;
	}
	/**
	 * This is the action to handle external exceptions.
	 */
	public function actionIndex()
	{
		
		$this->render('index',array( ));
	}
	
	public function actionSortable()
	{

		//* old data*/
		/*
		$users = User::model()->findAll();
		$model =  new User;
		if($model->isNewRecord) {
			Yii::app()->clientScript->registerScript('new-user', '
			$("#save-btn").show();
			$("#save-btn").click(function() {
				$("#user-details .editable").editable("submit", {
					url: "'.$this->createUrl('/site/create').'",
					success: function(data) {
						res = jQuery.parseJSON(data );
						console.log(res.errors);
						if(res.errors) {
							$.each(res.errors, function(k, v) { msg += v+"<br>"; });
							$("#msg").removeClass("alert-success").addClass("alert-error")
								.html(msg).show();
							 
						}else{
							msg = "User created!";
							$("#msg").removeClass("alert-error").addClass("alert-success")
								.html(msg).show();
							$("#tab-content1").append(data);
						}
						
						$("#save-btn").hide();
					},
					error: function(data) {
						var msg = "";
						if(data.errors) { //validation error
							$.each(data.errors, function(k, v) { msg += v+"<br>"; });
						} else if(data.responseText) { //ajax error
							msg = data.responseText;
						}
						$("#msg").removeClass("alert-success").addClass("alert-error")
								 .html(msg).show();         
					 }
				});
			});
			');   
		};
	//	dump($users);exit;
		$this->render('sortable',array(
			'users'=>$users,
			'model'=>$model,
		));*/
		$model=new User('searchfrontend');
        $model->unsetAttributes();  // clear any default values
        if(isset($_GET['User']))
            $model->attributes=$_GET['User'];

        $this->render('sortable',array(
            'model'=>$model,
        ));
		
	}
	/*
	** 	Create user
	*/
	public function actionCreate(){
		if(Yii::app()->request->isPostRequest){
			$model = new User;
			$model->attributes = $_POST;
			if($model->validate()) {
				$model->codepass($model->password);
				$model->save(false);
				/*$this->renderPartial('reload',array(
					'model'=>$model,
				));*/
				
				echo CJSON::encode(array('id' => $model->primaryKey));
				exit;
			} else {
				//echo 'error';exit;
				$errors = array_map(function($v){ return join(', ', $v); }, $model->getErrors());
				echo CJSON::encode(array('errors' => $errors));
			}
		} else {
			throw new CHttpException(400, 'Invalid request');  
		}
	}
	/*
	** 	Update user
	*/
	public function actionUpdate(){
		
			if(Yii::app()->request->isPostRequest){
				$id = $_POST['id'];
				$model = User::model()->findByPk($id);
				//dump($model);exit;
				$model->username = $_POST['username'];
				$model->email = $_POST['email'];
				$model->confirmation_password = $model->password;
				
				if($model->validate()) {
					$model->codepass($model->password);
					$model->save(false);
					
					echo CJSON::encode(array(
						'errors' => false,
						'username' => $model->username,
						'email' => $model->email
					));
					exit;
				} else {
					//echo 'error';exit;
					$errors = array_map(function($v){ return join(', ', $v); }, $model->getErrors());
					echo CJSON::encode(array(
						'errors' => true,
						'content' => $errors ,
					));
					exit;
					//echo CJSON::encode(array('errors' => $errors));
				}
			} else {
				throw new CHttpException(400, 'Invalid request');  
			}
		
	}
	
	public function actionTabular()
	{
		
		$criteria=new CDbCriteria();
		$criteria->distinct = true;
		$criteria->select = 't.stockname';
		//dump($criteria);exit;
		$stocks = Stock::model()->findAll($criteria);
		//dump($stocks);exit;
		$this->render('tabular',array(
			'stocks'=>$stocks,
		));
		
	}
	/*
	** 	Popup screen
	*/
	public function actionPopup()
	{
		
		$this->render('popup',array(
			//'stocks'=>$stocks,
		));
		
	}
	/*
	** 	Popup screen
	*/
	public function actionReload()
	{
		$users = User::model()->findAll();
		$this->renderPartial('reload',array(
			'users'=>$users,
		));
		
	}
	
	/*
	** 	Popup screen
	*/
	public function actionParentchild()
	{
		$users = User::model()->findAll();
		$model =  new User;
		if($model->isNewRecord) {
			Yii::app()->clientScript->registerScript('new-user', '
			$("#save-tn").show();
			$("#save-tn").click(function() {
				$("#user-details .editable").editable("submit", {
					url: "'.$this->createUrl('/site/create').'",
					success: function(data) {
						res = jQuery.parseJSON(data);
						console.log(res.errors);
						msg = "";
						if(res.errors) {
							$.each(res.errors, function(k, v) { msg += v+"<br>"; });
							console.log(msg);
							$("#msg").removeClass("alert-success").addClass("alert-error")
								.html(msg).show();
							
						}else{
							msg = "User created!";
							$("#msg").removeClass("alert-error").addClass("alert-success")
								.html(msg).show();
							location.reload();
						}
						
						//$("#save-btn").hide();
					},
					error: function(data) {
						var msg = "";
						if(data.errors) { //validation error
							$.each(data.errors, function(k, v) { msg += v+"<br>"; });
						} else if(data.responseText) { //ajax error
							msg = data.responseText;
						}
						$("#msg").removeClass("alert-success").addClass("alert-error")
								 .html(msg).show();         
					 }
				});
			});
			');   
		};
		$this->render('parent-child',array(
			//'stocks'=>$stocks,
			'model'=>$model,
			'users'=>$users,
		));
		
	}
	
	/*
	** 	Action Project: show infor for Project.
	*/
	public function actionDatavalidation()
	{
		$model = new Booking;
		// Validation for Step 1
		if(isset($_POST['step1'])){
			$model->price = $_POST['price'];
			$model->room = $_POST['room'];
			$model->days = $_POST['days'];
			$attributes = array('price', 'room', 'days');
			$valitor = $this->performAjaxValidation($model, $attributes);
			//dump($valitor);exit;
			if (($valitor) == '[]'){
				$result = array('error'=> false);
				Yii::app()->session['step1'] = array(
					'price' => $model->price,
					'room' => $model->room,
					'days' => $model->days,
				);
			} else{
				$result = array_merge(
					array('error'=> true),
					array('content'=>json_encode($valitor))
				);
			}
			//jsonOut($result);
			echo json_encode($result);
			exit();
        }
		// Validation for Step 2
		if(isset($_POST['step2'])){
			$model->name = $_POST['name'];
			$model->address = $_POST['address'];
			$model->phone = $_POST['phone'];
			$attributes = array('name', 'address', 'phone');
			$valitor = $this->performAjaxValidation($model, $attributes);
			//dump($valitor);exit;
			if (($valitor) == '[]'){
				$result = array('error'=> false);
				Yii::app()->session['step2'] = array(
					'name' => $model->name,
					'address' => $model->address,
					'phone' => $model->phone,
				);
			} else{
				$result = array_merge(
					array('error'=> true),
					array('content'=>json_encode($valitor))
				);
			}
			echo json_encode($result);
			exit();
        }
		
		// Validation for Step 3
		if(isset($_POST['step3'])){
			$model->credit = $_POST['credit'];
			$attributes = array('credit', );
			$valitor = $this->performAjaxValidation($model, $attributes);
			//dump($valitor);exit;
			if (($valitor) == '[]'){
				$result = array('error'=> false);
				$model->price = Yii::app()->session['step1']['price'];
				$model->room = Yii::app()->session['step1']['room'];
				$model->days = Yii::app()->session['step1']['days'];
				$model->name = Yii::app()->session['step2']['name'];
				$model->address = Yii::app()->session['step2']['address'];
				$model->phone = Yii::app()->session['step2']['phone'];
				if ($model->save(false)){
					Yii::app()->user->setFlash('success', Yii::t('strings','Data save!'));
					$result = array('error'=> false);
				}
			} else{
				$result = array_merge(
					array('error'=> true),
					array('content'=>json_encode($valitor))
				);
			}
			echo json_encode($result);
			exit();
        }
		// clear Session
		
		unset(Yii::app()->session['step1']);
		unset(Yii::app()->session['step2']);
		unset(Yii::app()->session['step3']);
		
		$this->render('datavalidation',array(
			'model'=>$model,
		));
	}
	
	
	public function actionTestajax()
	{
		echo Yii::app()->session['language'];exit;
		$this->redirect('/');
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
	
	protected function performAjaxValidation($model, $attributes=null){
        //if(isset($_POST['ajax']) && $_POST['ajax']==='booking-form'){
			return CActiveForm::validate($model, $attributes);
			Yii::app()->end();
		//}
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