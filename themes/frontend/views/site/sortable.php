<?php 
	$baseUrl = Yii::app()->baseUrl.WWWROOT_FRONTEND; 
	$cs = Yii::app()->getClientScript();
	$cs->registerCssFile($baseUrl.'/css//include/sortable.css');
	$cs->registerScriptFile($baseUrl.'/js/include/jquery.tablesorter.js');
?>
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
				<td><?php echo $value->username;?></td>
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
<!--div id="tab-content1" class="tab-content animated fadeIn">
			<?php 
				$this->widget('editable.EditableDetailView', array(
					'id' => 'user-details',
					'data' => $model,
					'url' => $this->createUrl('user/update'),  //common submit url for all editables
					'attributes'=>array(
						'username',
						array(  //select loaded from database
							'name' => 'email',
						),
						array(  //select loaded from database
							'name' => 'password',
						),
						array(  //select loaded from array
							'name' => 'confirmation_password',
						),             
						
					)
				));
			?>
			
		
<div id="msg" class="alert hide"></div>
<div style="text-align: center">
	<button id="save-btn" class="btn btn-primary hide" style="display: inline-block;">Save</button>
</div>
</div-->
<script>
	$(document).ready(function(){
        $("#myTable").tablesorter(); 
    }); 

</script>