

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