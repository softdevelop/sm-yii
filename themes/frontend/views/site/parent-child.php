<?php 
	$baseUrl = Yii::app()->baseUrl.WWWROOT_FRONTEND; 
	$cs = Yii::app()->getClientScript();
	
	$cs->registerCssFile($baseUrl.'/css/include/parent-child.css');
	$cs->registerCssFile($baseUrl.'/css/include/jquery.fancybox.css');
	
	$cs->registerScriptFile($baseUrl.'/js/include/jquery.fancybox.pack.js');
	$cs->registerScriptFile($baseUrl.'/js/include/jquery.tablesorter.js');
?>
<style>
.fancybox-inner .row{
	margin-left:0px;
}
input[type="password"] {
	width: 150px;
}
</style>
<ul class="tabs">
	<li>
		<input type="radio" checked name="tabs" id="tab1">
		<label for="tab1">tab 1</label>
		<div id="tab-content1" class="tab-content animated fadeIn">
			<table class="table table-bordered" id="myTable">
				<thead>
					<tr>
						<th>#</th>
						<th><?php echo Yii::t('strings','Username')?></th>
						<th><?php echo Yii::t('strings','Email')?></th>
						<th><?php echo Yii::t('strings','Status')?></th>
					</tr>
				</thead>
				<tbody>
				
				<?php if ($users!==null):?>
					<?php $i=1;?>
					<?php foreach ($users as $key=>$value):?>
						
						<tr>
							<td><?php echo $i; $i++;?></td>
							<td>
								<a href="#divForm<?php echo $value->id;?>" user_id="<?php echo $value->id;?>" id="btnForm"><?php echo $value->username;?></a>
								<div id="divForm<?php echo $value->id;?>" style="display:none">
									<form enctype="multipart/form-data" id="user-form" action="" method="post">
										<div class="row">
											<label for="User_username" class="required">Username <span class="required">*</span></label>		<input size="20" maxlength="20" name="User[username]" id="User_username" type="text" value="<?php echo $value->username;?>">			
										</div>

										<div class="row">
											<label for="User_email" class="required">E-mail <span class="required">*</span></label>		<input size="60" maxlength="128" name="User[email]" id="User_email" type="text" value="<?php echo $value->email;?>">		<div class="errorMessage" id="User_email_em_" style="display:none"></div>	
										</div>
									</form>
								</div>
								
							</td>
							<td><?php
								$this->widget('editable.Editable', array(
									'type'      => 'text',
									'name'      => 'user_name',
									'pk'        => $value->id,
									'text'      => $value->email,
									'url'       => $this->createUrl('/user/user/editemail'), 
									'title'     => 'Enter an email',
									'placement' => 'right'
								));
							//echo $value->email;?></td>
							<td><?php echo User::itemAlias("UserStatus",$value->status);?></td>
						</tr>
					<?php endforeach;?>
				<?php endif;?>
						
				</tbody>
			</table>
			<?php 
				$this->widget('editable.EditableDetailView', array(
					'id' => 'user-details',
					'data' => $model,
					'url' => $this->createUrl('/user/update'),  //common submit url for all editables
					'attributes'=>array(
						'username',
						array(  //select loaded from database
							'name' => 'email',
						),
						array(  //select loaded from database
							'name' => 'password',
							'editable' => array(
								'type'    => 'password',
							)
						),
						array(  //select loaded from array
							'name' => 'confirmation_password',
							'editable' => array(
								'type'    => 'password',
							)
						),             
						
					)
				));
			?>
			<div id="msg" class="alert hide"></div>
			<div style="text-align: center">
				<button id="save-btn" class="btn btn-primary hide" style="display: inline-block;">Save</button>
			</div>
		</div>
	</li>
	<li>
		<input type="radio" name="tabs" id="tab2">
		<label for="tab2">tab 2</label>
		<div id="tab-content2" class="tab-content animated fadeIn">
			<p>dddd</p>
		</div>
	</li>
	<li>
		<input type="radio" name="tabs" id="tab3">
		<label for="tab3">tab 3</label>
		<div id="tab-content3" class="tab-content animated fadeIn">
			<p>sssss</p>
		</div>
	</li>
</ul>
<div>
	
</div>

<script type="text/javascript">
    $("#btnForm").fancybox();
</script>
