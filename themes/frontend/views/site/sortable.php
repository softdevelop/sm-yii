<?php 
	//$baseUrl = Yii::app()->baseUrl.WWWROOT_FRONTEND; 
	//$cs = Yii::app()->getClientScript();
	//$cs->registerCssFile($baseUrl.'/css//include/sortable.css');
	//$cs->registerScriptFile($baseUrl.'/js/include/jquery.tablesorter.js');
?>
<!--table class="table table-bordered" id="myTable">
	<thead>
		<tr>
			<th>#</th>
			<th><?php //echo Yii::t('strings','Username')?></th>
			<th><?php //echo Yii::t('strings','Email')?></th>
			<th><?php //echo Yii::t('strings','Status')?></th>
		</tr>
	</thead>
	<tbody>
	
	<?php //if ($users!==null):?>
		<?php //$i=1;?>
		<?php //foreach ($users as $key=>$value):?>
			
			<tr>
				<td><?php //echo $i; $i++;?></td>
				<td><?php //echo $value->username;?></td>
				<td><?php
					/*$this->widget('editable.Editable', array(
						'type'      => 'text',
						'name'      => 'user_name',
						'pk'        => $value->id,
						'text'      => $value->email,
						'url'       => $this->createUrl('/user/user/editemail'), 
						'title'     => 'Enter an email',
						'placement' => 'right'
					));*/
				//echo $value->email;?></td>
				<td><?php //echo User::itemAlias("UserStatus",$value->status);?></td>
			</tr>
		<?php //endforeach;?>
	<?php //endif;?>
			
	</tbody>
</table-->

<!--script>
	$(document).ready(function(){
        $("#myTable").tablesorter(); 
    }); 

</script-->

<?php 	$this->widget('bootstrap.widgets.TbGridView', array(
    'id' => 'usergrid',
    'itemsCssClass' => 'table-bordered items',
    'dataProvider' => $model->searchfrontend(),
    'columns'=>array(
		array(
			'name' => 'id',
			'type'=>'raw',
			'value' => 'CHtml::link(CHtml::encode($data->id),array("admin/update","id"=>$data->id))',
		),
        array(
			'class' => 'editable.EditableColumn',
			'name' => 'username',
			'headerHtmlOptions' => array('style' => 'width: 110px'),
			'editable' => array(    //editable section
					//'apply'      => '$data->username != 4',
					'url'        => $this->createUrl('/user/admin/ajaxEdit'),
					'placement'  => 'right',
              )               
        ),
        array(
			'class' => 'editable.EditableColumn',
			'name' => 'email',
			'headerHtmlOptions' => array('style' => 'width: 110px'),
			'editable' => array(    //editable section
					//'apply'      => '$data->email != 4',
					'url'        => $this->createUrl('/user/admin/ajaxEdit'),
					'placement'  => 'right',
              )               
        ),
		array(
			'name'=>'superuser',
			'value'=>'User::itemAlias("AdminStatus",$data->superuser)',
			'filter'=>User::itemAlias("AdminStatus"),
		),
		array(
			'class' => 'editable.EditableColumn',
			'name' => 'status',
			'value'=>'User::itemAlias("UserStatus",$data->status)',
			'editable' => array(    //editable section
					//'apply'      => '$data->email != 4',
					'type'      => 'select',
					'source'=> User::itemAlias("UserStatus"),
					'url'        => $this->createUrl('/user/admin/ajaxEdit'),
					'placement'  => 'right',
			)               
        ),
    ),
)); 
?>