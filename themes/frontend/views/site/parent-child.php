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
<script>
	$(document).ready(function(){
		$('.save-btn').on('click',function(){
			$id = $(this).data('id');
			$mainDiv = $(this).parent().parent().parent();
			$mainDiv.find('.alert').remove();
			username = $mainDiv.find('input[name="username"]').val();
			email = $mainDiv.find('input[name="email"]').val();
			$.ajax({
				url : '/site/update',
				type : 'POST',
				data : {
					id : $id,
					username : username,
					email : email
				},
				success : function(res){
					msg = '';
					rs = jQuery.parseJSON(res);
					if(rs.errors){
						$.each(rs.content, function(k, v) { msg += v+"<br>"; });
						//alert(msg);
						$mainDiv.prepend('<div class="alert alert-danger">'+msg+'</div>');
					}else{
						$mainDiv.find('input[name="username"]').val(rs.username);
						$mainDiv.find('input[name="email"]').val(email);
						$mainDiv.prepend('<div class="alert alert-info">Info for this user is updated</div>');
					}
				},
				error : function(res){
					msg = '';
					rs = jQuery.parseJSON(res);
					console.log(rs);
					$.each(rs, function(k, v) { msg += v+"<br>"; });
					
					$mainDiv.append(msg);
				}
			})
			return false;
		})
	});
</script>


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
											<label for="User_username" class="required">Username <span class="required">*</span></label>		<input size="20" maxlength="20" name="username" id="User_username" type="text" value="<?php echo $value->username;?>">			
										</div>

										<div class="row">
											<label for="User_email" class="required">E-mail <span class="required">*</span></label>		<input size="60" maxlength="128" name="email" id="User_email" type="text" value="<?php echo $value->email;?>">		<div class="errorMessage" id="User_email_em_" style="display:none"></div>	
										</div>
										<div class="row">
											<label for="last_vist" class="required">Last visit: <span class="required">*</span></label>		<input size="60" maxlength="128" name="last_visit" id="last_vist" type="text" value="<?php echo $value->lastvisit_at;?>">		<div class="errorMessage" id="User_email_em_" style="display:none"></div>	
										</div>
										<div style="text-align: center">
											<button id="save-btn" class="btn btn-primary save-btn" data-id="<?php echo $value->id;?>" style="display: inline-block;">Save</button>
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
									'placement' => 'bottom'
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
				<button id="save-tn" class="btn btn-primary hide" style="display: inline-block;">Save</button>
			</div>
		</div>
	</li>
	<li>
		<input type="radio" name="tabs" id="tab2">
		<label for="tab2">tab 2</label>
		<div id="tab-content2" class="tab-content animated fadeIn">
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
								<a href="#divForm<?php echo $value->id;?>2" user_id="<?php echo $value->id;?>" id="btnForm"><?php echo $value->username;?></a>
								<div id="divForm<?php echo $value->id;?>2" style="display:none">
									<table class="table table-bordered" id="myTable">
										<thead>
											<tr>
												<th>#</th>
												<th><?php echo Yii::t('strings','Last visit')?></th>
											</tr>
										</thead>
										
										<tbody>
											<?php if (!empty($value->lastvisit)):?>
												<?php $j=1;?>
											<?php foreach ($value->lastvisit as $key2=>$value2):?>
												<tr>
													<td><?php echo $j; $j++;?></td>
													<td><?php echo $value2->last_visit;?></td>
												</tr>
											<?php endforeach;?>
											<?php else:?>
												<tr>
													<td>1</td>
													<td><?php echo Yii::t('strings','Not login Before');?></td>
												</tr>
											<?php endif;?>
										</tbody>
									</table>
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
									'placement' => 'bottom'
								));
							//echo $value->email;?></td>
							<td><?php echo User::itemAlias("UserStatus",$value->status);?></td>
						</tr>
					<?php endforeach;?>
				<?php endif;?>
				</tbody>
			</table>
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
