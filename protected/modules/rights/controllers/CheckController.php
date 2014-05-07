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
	private $_model;
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
					'selectuser',
					'testAjax',
				),
				'users'=>$this->_authorizer->getSuperusers(),
			),
			array('deny', // Deny all users
				'users'=>array('*'),
			),
		);
	}
	/**
	* @Select a user to check permission
	*/
	public function actionSelectuser(){
		$model =  new User;
		$models= User::model()->findAll();
		
		$this->render('selectuser',array(
			'model' =>$model,
			'models' =>$models,
		));
		
	}
	public function actionIndex(){
		echo 'dd';exit;
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
		
		$assignSelectOptions = Rights::getAuthItemSelectOptions(null, array());
		
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
			
			$dataProvider = new RAuthItemDataProvider('assignments', array(
				'userId'=>$id,
			));
			$GroupOrRoles = explode('.', $permission);
			
			$assignedItems = $this->_authorizer->getAuthItems(null, $id);
			$assignments = array_keys($assignedItems);
			if (in_array($permission, $assignments)) {
				$result = array(
					'error' => false,
					'message' => 'Ok data',
				);
				jsonOut($result);
				exit();
			}else{
				$group = Rights::getAssignedRoles($id);
				
				if($group!== null){
					//$childDataProvider = array();
					//echo '<pre>';
					foreach($group as $key=>$value){
						$model = $this->loadModel($key);
						$itemName = $model->getName();
						$childDataProvider = new RAuthItemChildDataProvider($model);
						foreach($childDataProvider->data as $key2 =>$data){
							if (($data->getNameText()==$permission)){
								$result = array(
									'error' => false,
									'message' => 'Ok data truoc',
								);
								jsonOut($result);
								exit();
							}
						}
					}
				}
				//exit;
				$result = array(
					'error' => true,
					'message' => 'Ok data sau',
				);
				jsonOut($result);
				exit();
			}
			
		}else {
			$result = array(
				'error' => true,
				'message' => 'Missing data',
			);
			jsonOut($result);
		}
	}
	
	/*public function actionTestAjax(){
		$id = 2;
		
		$group = Rights::getAssignedRoles($id);
		
		if($group!== null){
			//$childDataProvider = array();
			//echo '<pre>';
			$model = array(); 
			$itemName = array(); 
			$childDataProvider = array(); 
			foreach($group as $key=>$value){
				//$key= "Group4";
				echo $key.' <br/>';
				$model[$key] = $this->loadModel($key);
				$itemName[$key] = $model[$key]->getName();
				$childDataProvider[$key] = new RAuthItemChildDataProvider($model[$key]);
				foreach($childDataProvider[$key]->data as $key2 =>$data){
					echo $data->getNameText().' <br/> ';
				}
				//break;
			}
			exit();
			$this->render('testAjax', array(
				'childDataProvider'=>$childDataProvider,
			));
		}
	}*/
	
	/**
	* Returns the data model based on the primary key given in the GET variable.
	* If the data model is not found, an HTTP exception will be raised.
	*/
	public function loadModel($name)
	{
		$this->_model = $this->_authorizer->authManager->getAuthItem($name);
		$this->_model = $this->_authorizer->attachAuthItemBehavior($this->_model);
		if( $this->_model===null )
			throw new CHttpException(404, Rights::t('core', 'The requested page does not exist.'));
		return $this->_model;
	}
}