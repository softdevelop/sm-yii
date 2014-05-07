<div class="children">
	<h4><?php echo Rights::t('core', 'Add Roles'); ?></h4>

	<?php $this->widget('zii.widgets.grid.CGridView', array(
		'dataProvider'=>$childDataProvider,
		'template'=>'{items}',
		'hideHeader'=>true,
		'emptyText'=>Rights::t('core', 'This item has no children.'),
		'htmlOptions'=>array('class'=>'grid-view parent-table mini'),
		'columns'=>array(
			array(
				'name'=>'name',
				'header'=>Rights::t('core', 'Name'),
				'type'=>'raw',
				'htmlOptions'=>array('class'=>'name-column'),
				'value'=>'$data->getNameLink()',
			),
			/*array(
				'name'=>'type',
				'header'=>Rights::t('core', 'Type'),
				'type'=>'raw',
				'htmlOptions'=>array('class'=>'type-column'),
				'value'=>'$data->getTypeText()',
			),*/
			array(
				'header'=>'&nbsp;',
				'type'=>'raw',
				'htmlOptions'=>array('class'=>'actions-column'),
				'value'=>'$data->getRemoveChildLink()',
			),
		)
	)); ?>

</div>