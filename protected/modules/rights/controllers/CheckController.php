<?php
/**
* Rights assignment controller class file.
*
* @author Christoffer Niska <cniska@live.com>
* @copyright Copyright &copy; 2010 Christoffer Niska
* @since 0.9.1
*/
class CheckController extends RController
{
	/**
	* @property RAuthorizer
	*/
	private $_authorizer;

	/**
	* Initializes the controller.
	*/
	public function init()
	{
		Yii::app()->theme = 'backend';
		$this->_authorizer = $this->module->getAuthorizer();
		//$this->layout = $this->module->layout;
		$this->layout = '//layouts/main';
		$this->defaultAction = 'view';

		// Register the scripts
		$this->module->registerScripts();
	}

	/**
	* @return array action filters
	*/
	public function filters()
	{
		return array('accessControl');
	}

	/**
	* Specifies the access control rules.
	* This method is used by the 'accessControl' filter.
	* @return array access control rules
	*/
	public function accessRules()
	{
		return array(
			array('allow', // Allow superusers to access Rights
				'actions'=>array(
					'view',
					'user',
					'revoke',
					'ajax',
				),
				'users'=>$this->_authorizer->getSuperusers(),
			),
			array('deny', // Deny all users
				'users'=>array('*'),
			),
		);
	}
	public function actionUser(){
		// Create the user model and attach the required behavior
		$userClass = $this->module->userClass;
		$model = CActiveRecord::model($userClass)->findByPk($_GET['id']);
		// form Model
		$formModel = new AssignmentForm();
		
		//Permission
		$this->_authorizer->attachUserBehavior($model);
		$assignedItems = $this->_authorizer->getAuthItems(null, $model->getId());
		$assignments = array_keys($assignedItems);
		
		$assignSelectOptions = Rights::getAuthItemSelectOptions(null, $assignments);
		
		$this->render('user',array(
			'model'=>$formModel,
			'user'=>$model,
			'assignSelectOptions'=>$assignSelectOptions,
		));
	}
	public function actionAjax(){
		if (isset($_POST)){
			$permission = $_POST['permission'];
			$id = $_POST['id'];
			$userClass = $this->module->userClass;
			$model = CActiveRecord::model($userClass)->findByPk($id);
			
			echo $model->username;exit;
			$result = array(
				'error' => true,
				'message' => 'Ok data',
			);
			jsonOut($result);
			
		}else {
			$result = array(
				'error' => true,
				'message' => 'Missing data',
			);
			jsonOut($result);
		}
		
		
	}

}